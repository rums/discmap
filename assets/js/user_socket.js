// NOTE: The contents of this file will only be executed if
// you uncomment its entry in "assets/js/app.js".

// Bring in Phoenix channels client library:
import {Socket} from "phoenix"

// And connect to the path in "lib/discmap_web/endpoint.ex". We pass the
// token for authentication. Read below how it should be used.
let socket = new Socket("/socket", {params: {token: window.userToken}})

// When you connect, you'll often need to authenticate the client.
// For example, imagine you have an authentication plug, `MyAuth`,
// which authenticates the session and assigns a `:current_user`.
// If the current user exists you can assign the user's token in
// the connection for use in the layout.
//
// In your "lib/discmap_web/router.ex":
//
//     pipeline :browser do
//       ...
//       plug MyAuth
//       plug :put_user_token
//     end
//
//     defp put_user_token(conn, _) do
//       if current_user = conn.assigns[:current_user] do
//         token = Phoenix.Token.sign(conn, "user socket", current_user.id)
//         assign(conn, :user_token, token)
//       else
//         conn
//       end
//     end
//
// Now you need to pass this token to JavaScript. You can do so
// inside a script tag in "lib/discmap_web/templates/layout/app.html.heex":
//
//     <script>window.userToken = "<%= assigns[:user_token] %>";</script>
//
// You will need to verify the user token in the "connect/3" function
// in "lib/discmap_web/channels/user_socket.ex":
//
//     def connect(%{"token" => token}, socket, _connect_info) do
//       # max_age: 1209600 is equivalent to two weeks in seconds
//       case Phoenix.Token.verify(socket, "user socket", token, max_age: 1_209_600) do
//         {:ok, user_id} ->
//           {:ok, assign(socket, :user, user_id)}
//
//         {:error, reason} ->
//           :error
//       end
//     end
//
// Finally, connect to the socket:
socket.connect()

let followUsername = window.followUsername
let channel = socket.channel(`user_map:${followUsername}`, {})
channel.join()
  .receive("ok", resp => { console.log("Joined successfully", resp) })
  .receive("error", resp => { console.log("Unable to join", resp) })

let chatInput         = document.querySelector("#chat-input")
let messagesContainer = document.querySelector("#messages")
chatInput.addEventListener("keypress", event => {
  if(event.key === 'Enter'){
    channel.push("mud_msg", {body: {room_short: chatInput.value, x: 200, y: 200}})
    chatInput.value = ""
  }
})

channel.on("mud_msg", payload => {
  let src = payload.body.src;
  let x = payload.body.x;
  let y = payload.body.y;
  let messageItem = document.createElement("div")
  let roomShort = document.createElement("strong")
  roomShort.innerText = payload.body.room_short
  messageItem.append(roomShort)
  let cvs = document.createElement("canvas")
  // load image from payload.body.src and draw it on the canvas
  let ctx = cvs.getContext("2d")
  let img = new Image()
  img.src = src
  img.onload = () => {
    let width = 500;
    let height = 500;
    cvs.width = width
    cvs.height = height
    // ctx.scale(300 / img.width, 300 / img.height)
    ctx.translate((width / 2) - x, (height / 2) - y)
    ctx.drawImage(img, 0, 0)
    // draw red circle on the canvas at x = body.x, y = body.y
    ctx.beginPath()
    ctx.arc(x, y, 6, 0, 2 * Math.PI)
    ctx.fillStyle = "red"
    ctx.fill()
    // center the canvas at x, y
    messageItem.append(cvs)
    messagesContainer.appendChild(messageItem)
  }
})

export default socket

import React, {useState} from "react";

function SignUpForm({ onSelectForm }) {
    const[username, setUsername] = useState("")
    const[email, setEmail] = useState("")
    const[password, setPassword] = useState("")
    const[confirmPassword, setConfirmPassword] = useState("")

    function handleSubmit(e) {
        e.preventDefault();
        const newUser = {
            username,
            email,
            password,
            confirm_password: confirmPassword
        };
        fetch("/signup", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newUser)
        })
        .then((response) => {
            if(response.ok) {
                response.json().then((user) => console.log(user))
            } else {
                response.json().then((error) => console.log(error))
            }
        });
    }

    return (
        <section className="grid justify-center">
            <form onSubmit={handleSubmit} className="w-auto p-4">
                <hr />
                <article>
                    <label htmlFor="username">Username</label>
                    <input 
                        id="username"
                        type="text" 
                        value={username}
                        onChange={(e) => setUsername(e.target.value)}
                    />
                </article>
                <article>
                    <label htmlFor="email">Email</label>
                    <input 
                        id="email" 
                        type="email"
                        value={email}
                        onChange={(e) => setEmail(e.target.value)}
                    />
                </article>
                <article>
                    <label htmlFor="password">Password</label>
                    <input 
                        id="password" 
                        type="password"
                        value={password}
                        onChange={(e) => setPassword(e.target.value)}
                    />
                </article>
                <article>
                    <label htmlFor="confirm_password">Confirm Password</label>
                    <input 
                        id="confirm_password" 
                        type="password"
                        value={confirmPassword}
                        onChange={(e) => setConfirmPassword(e.target.value)}
                    />
                </article>
                <article>
                    <button type="submit">Sign Up</button>
                </article>
                <hr />
                <p className="mt-3">Already have an account? <button onClick={() => onSelectForm(true)} className="float-right">Login</button></p>
            </form>
        </section>
    );

}

export default SignUpForm;
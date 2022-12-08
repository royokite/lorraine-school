import React, {useState} from "react";

function SignUpForm({ onSelectForm, onLogin }) {
    const [username, setUsername] = useState("");
    const [email, setEmail] = useState("");
    const [password, setPassword] = useState("");
    const [confirmPassword, setConfirmPassword] = useState("");
    const [errors, setErrors] = useState([]);
    const [isLoading, setIsLoading] = useState(false);

    function handleSubmit(e) {
        setIsLoading(true);
        e.preventDefault();
        const newUser = {
            username,
            email,
            password,
            password_confirmation: confirmPassword
        };
        fetch("/signup", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newUser)
        })
        .then((response) => {
            setIsLoading(false);
            if(response.ok) {
                response.json().then((user) => onLogin(user))
            } else {
                response.json().then((error) => setErrors(error.errors))
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
                        id="password_confirmation" 
                        type="password"
                        value={confirmPassword}
                        onChange={(e) => setConfirmPassword(e.target.value)}
                    />
                </article>
                <article>
                    <button type="submit">{isLoading ? "Loading..." : "Sign Up"}</button>
                </article>
                <article>
                    {errors.length > 0 ? (errors.map((err) => <ul><li key={err}>{err}</li></ul>)) : ""}
                </article>
                <hr />
                <p className="mt-3">Already have an account? <button onClick={() => onSelectForm(true)} className="float-right">Login</button></p>
            </form>
        </section>
    );

}

export default SignUpForm;
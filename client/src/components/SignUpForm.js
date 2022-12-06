import React from "react";

function SignUpForm() {
    return (
        <form>
            <hr />
            <article>
                <label htmlFor="username">Username</label>
                <input 
                    id="username"
                    type="text" 
                />
            </article>
            <article>
                <label htmlFor="email">Email</label>
                <input 
                    id="email" 
                    type="email"
                />
            </article>
            <article>
                <label htmlFor="password">Password</label>
                <input 
                    id="password" 
                    type="password"
                />
            </article>
            <article>
                <label htmlFor="confirm_password">Confirm Password</label>
                <input 
                    id="confirm_password" 
                    type="confirm_password"
                />
            </article>
            <article>
                <button>Sign Up</button>
            </article>
            <hr />
            <article>
                <p>Already have an account? &nbsp;<button>Login</button></p>                
            </article>
        </form>
    );

}

export default SignUpForm;
import React, {useState} from "react";
import { useNavigate } from "react-router-dom"

function NewStudentForm({ setStudents }) {
    const [firstname, setFirstname] = useState("")
    const [lastname, setLastname] = useState("")
    const [age, setAge] = useState("")
    const [contact, setContact] = useState("")
    const [gender, setGender] = useState("");
    const [email, setEmail] = useState("");
    const [errors, setErrors] = useState("");
    const [password, setPassword] = useState("");
    const [confirmPassword, setConfirmPassword] = useState("");

    const navigate = useNavigate()

    function handleSubmit(e) {
        e.preventDefault();
        const newStudent = {
            firstname,
            lastname,
            age,
            contact,
            gender,
            email,
            password,
            password_confirmation: confirmPassword
        };

        fetch("/students", {
            method: "POST",
            headers: {"Content-Type": "application/json"},
            body: JSON.stringify(newStudent)
        })
        .then((response) => {
            if(response.ok) {
                response.json().then((student) => setStudents(student))
            } else {
                response.json().then((error) => setErrors(error.errors))
            }
        });

        navigate("/students")
    }

    return (
        <section className="grid justify-center">
            <form onSubmit={handleSubmit} className="w-auto p-4">
                <hr />
                <article>
                    <label htmlFor="firstname">Firstname</label>
                    <input 
                        id="firstname"
                        type="text" 
                        value={firstname}
                        onChange={(e) => setFirstname(e.target.value)}
                    />
                </article>
                <article>
                    <label htmlFor="lastname">Lastname</label>
                    <input 
                        id="lastname"
                        type="text" 
                        value={lastname}
                        onChange={(e) => setLastname(e.target.value)}
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
                    <label htmlFor="age">Age</label>
                    <input 
                        id="age"
                        type="text" 
                        value={age}
                        onChange={(e) => setAge(e.target.value)}
                    />
                </article>              
                <article>
                    <label htmlFor="contact">Contact</label>
                    <input 
                        id="contact"
                        type="text" 
                        value={contact}
                        onChange={(e) => setContact(e.target.value)}
                    />
                </article>              
                <article>
                    <label htmlFor="gender">Gender</label><br />
                    <select 
                        id="gender"
                        type="text" 
                        value={gender}
                        onChange={(e) => setGender(e.target.value)}
                        style={{width: "6rem"}}
                    >
                        <option value="Male">Male</option>
                        <option value="Female">Female</option>
                    </select>
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
                    <button type="submit">Submit</button>
                </article>
                <hr />
                <article>
                    {errors.length > 0 ? (errors.map((err) => <ul  key={err}><li>{err}</li></ul>)) : ""}
                </article>
            </form>
        </section>
    );

}

export default NewStudentForm;
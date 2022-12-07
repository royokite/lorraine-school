import { BrowserRouter, Routes, Route } from "react-router-dom";
import { useState, useEffect } from "react";
import "./index.css";
import Login from "./pages/Login";
import NavBar from "./components/NavBar";
import Instructors from "./pages/Instructors";
import Students from "./pages/Students";
import Courses from "./pages/Courses";

function App() {
  const [user, setUser] = useState(null)

  useEffect(() => {
    fetch("/me")
    .then((response) => {
      if(response.ok) {
        response.json().then((user) => setUser(user))
      }
    });
  }, []);

  if(!user) return <Login onLogin={setUser} />;

  return (
    <BrowserRouter>
      <NavBar setUser={setUser} />
      <section>
        <Routes>
          <Route exact path="/courses" element={<Courses />} />
          <Route exact path="/instructors" element={<Instructors />} />
          <Route exact path="/students" element={<Students />} />
          <Route path="*" element={<h1 className="text-indigo-900/100 text-5xl underline m-2 font-bold">404: Page Not Found!</h1>} />
        </Routes>
        
      </section>
    </BrowserRouter>
  );
}

export default App;

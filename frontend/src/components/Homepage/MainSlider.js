import "./mainSlider.css"
// import CategorySearch from "../CategorySearch/CategorySearch";
import Navigation from "../Navigation";
import { useState,useEffect } from "react";
import food from './foods/t.jpg'
import food1 from './foods/a.jpg'
import food2 from './foods/b.jpg'
import food3 from './foods/c.jpg'




const MainSlider=()=>{
  const [urlIndex, setUrlIndex] = useState(0);
  const imageUrls = [
    food,
    food1,
    food2,
    food3,
  ];
// const headings=[
//   "Discover Your Favorite Places!",
//   "Make a Review!",
//   "Upload Pictures!"
// ]


 useEffect(() => {
  const changeImage = () => {
    setUrlIndex((urlIndex + 1) % imageUrls.length);
  };
  const interval = setInterval(() => {
    changeImage();
  }, 3000);
   return () => clearInterval(interval);
 }, [urlIndex, imageUrls.length]);

    return (
      <div
        className="slider"
        style={{
          backgroundImage: `url(${imageUrls[urlIndex]})`,
          backgroundSize: "cover",
          backgroundPosition: "center",
        }}
      >
        <div className="dark">
          <Navigation />
          <div className="mainHeadingDiv">
            <h1 className="mainImgHeader">
              {" "}
              DineDiscovery
              <i
                className="fa-brands fa-yelp"
                style={{ fontSize: "90px", color: "Red" }}
              ></i>
            </h1>
            <h1 className="mainImgHeader subHeader">
              Discover Your Favorite Places!
            </h1>
          </div>
        </div>
      </div>
    );
}
export default MainSlider

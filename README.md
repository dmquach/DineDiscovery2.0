# Welcome to DineDiscover

Live Link: https://dinediscover.onrender.com/

### What is DineDiscover?

DineDiscover is an online platform designed for users to explore restaurants, share reviews, and access ratings effortlessly. The inspiration behind DineDiscover stemmed from a passion for food and a love for dining out. The goal is to provide a user-friendly website that simplifies the process of discovering exciting new restaurants. As a dedicated food enthusiast, I aimed to create a space where people can easily find their ideal dining spot and share their culinary experiences.

> ![How It looks](/app/assets/images/dine.gif)

### Components

# Reviews
DineDiscover users can easily share their dining experiences by writing reviews with ratings and multiple pictures. The latest reviews will appear on the front page, and if a user has already written a review for a restaurant, it will show up at the top of the review section for convenience.

```js
//handling image files
const handleFiles = ({ currentTarget }) => {
  const files = currentTarget.files;

  setImageFiles(files);
  if (files.length !== 0) {
    let filesLoaded = 0;
    const urls = [];
    Array.from(files).forEach((file, index) => {
      const fileReader = new FileReader();
      fileReader.readAsDataURL(file);
      fileReader.onload = () => {
        urls[index] = fileReader.result;

        if (++filesLoaded === files.length) setImageUrls(urls);
      };
    });
  } else setImageUrls([]);
};
```

a DineDiscover user can easily update their reviews and ratings by clicking updating button to update their review

> Updating a review
> ![update review](/app/assets/images/update.gif)

a DineDiscover user easily can see their review it will be always on the top of review section

> Writing a review (with images)
> ![updateReview a review_1](/app/assets/images/starReview_2.gif)

> Writing a review (without an image)
> ![making a review_1](/app/assets/images/starReview_1.gif)

> Deleting a review
> ![delete a review_1](/app/assets/images/deleteReview.gif)

# Rating

DineDiscover user leaves a rating for a restaurant, DineDiscover automatically updates the restaurant's overall rating to reflect the new feedback. This ensures that users have access to the most accurate and up-to-date restaurant ratings possible.

```javascript
//Star rating component
{
  [...Array(5)].map((star, i) => {
    i += 1;
    return (
      <button
        key={i + 99}
        className={i <= rating ? "on" : "off"}
        onMouseEnter={() => setRating(i)}
        onMouseLeave={() => setHover(rating)}
      >
        <i className="fa-solid fa-star"></i>
      </button>
    );
  });
}
```

```ruby
#when reviews is deleted it updates the restaurant's ratings
 def destroy
    @review = Review.find(params[:id])
    @business = Business.find(@review.business_id)
    @review.destroy
    @business.update_average_rating
    render "/api/businesses/show"
  end
```

```ruby
#when review is successfully saved it updates the restaurant's rating

    if @review.save
      @review.business.update_average_rating
      render :create
    else
      render json: @review.errors.full_messages, status: 422
    end
  end
```

> Dynamic Rating Feature
> ![delete a review_1](/app/assets/images/rating.gif)

# Search

If you're a DineDiscover user, you can use the search, google map will render places with markers to find great restaurants. user can filter your search by category, making it easy to find.

> Search Bar feature
> ![search bar feature](/app/assets/images/searchType.gif)

> Search by category feature
> ![delete a review_1](/app/assets/images/searchcate.gif)

```js
//search logic in frontend
const SearchBar = () => {
  const [searchTerm, setSearchTerm] = useState("");
  useEffect(() => {}, [searchTerm]);
  return (
    <>
      <div className="searchbarWrapper">
        <input
          type="text"
          value={searchTerm}
          placeholder="taco,cheap dinner,Max's"
          onChange={(e) => {
            setSearchTerm(e.target.value);
          }}
        />
        <Link className="searchLink" to={`/search/${searchTerm}`}>
          <button>
            <i className="fa-solid fa-magnifying-glass"></i>
          </button>
        </Link>
      </div>
    </>
  );
};
```

```ruby
#search logic in backend
  def search
    query = params[:query].downcase
    category = params[:category]&.downcase
    @businesses = Business.includes(:reviews).where("LOWER(category) LIKE ?", "%#{query}%")
    render :search
  end
```

# Review Awaits

DineDiscover has a special feature called "Your Next Review Awaits" that helps users discover new dining experiences. When users log in to their accounts, they'll see a list of recommended restaurants that they haven't reviewed yet. This makes it easy to try new places and share their experiences with others.

```ruby
  def unreviewed
    @businesses = Business.where.not(id: current_user.reviews.pluck(:business_id)).order("RANDOM()").limit(6)
    render :unreviewed
  end
```

> Review Awaits Features
> ![review awaits features](/app/assets/images/await.gif)

# Thanks

DineDiscover was created within a 14day time frame thank you for your time and consideration!
# DineDiscovery2.0

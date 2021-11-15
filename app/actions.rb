
    # File.read(File.join('app/views', 'index.html'))

def humanized_time_ago(time_ago_in_minutes)
    if time_ago_in_minutes >= 60
        "#{time_ago_in_minutes / 60} hours ago"
    else
        "#{time_ago_in_minutes} minutes ago"
    end
end

get '/' do
    finstagram_post_atlas = {
        username: "atlas_1",
        avatar_url: "/images/planeicon1.png",
        photo_url: "/images/post1-santorini.jpeg",
        humanized_time_ago: humanized_time_ago(15),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "atlas_1",
            text: "Beautiful Santorini!"
        }]

    }

    finstagram_post_lover = {
        username: "travel_lover",
        avatar_url: "/images/icon2.png",
        photo_url: "/images/post1_bali.jpeg",
        humanized_time_ago: humanized_time_ago(65),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "travel_lover",
            text: "travel_lover: #goodvibesonly in Bali!"
        }]

    }

    finstagram_post_vacations = {
        username: "best_vacations",
        avatar_url: "/images/travelicon3.jpg",
        photo_url: "/images/thailandpost3.jpeg",
        humanized_time_ago: humanized_time_ago(190),
        like_count: 0,
        comment_count: 1,
        comments: [{
            username: "best_vacations",
            text: "best_vacations: Soaking up the sun in Thailand :)"
        }]

    }

    [finstagram_post_atlas, finstagram_post_lover, finstagram_post_vacations].to_s
    
end


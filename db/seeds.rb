# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#   
#   cities = City.create([{ :name => 'Chicago' }, { :name => 'Copenhagen' }])
#   Major.create(:name => 'Daley', :city => cities.first)
#bob = Artist.create! :name => "Bob Dylan", :genre => "Rock"
#album = bob.albums.create! :name => "The Essential Bob Dylan"
#album.tracks.create! :number => 1, :name => "Blowin' in the Wind"
#album.tracks.create! :number => 2, :name => "Don't Think Twice, It's All Right"
#album.tracks.create! :number => 3, :name => "The Times, They Are A-Changin'"
#album.tracks.create! :number => 4, :name => "It Ain't Me, Babe"
#album.tracks.create! :number => 5, :name => "Maggie's Farm"
#album.tracks.create! :number => 6, :name => "It's All Over Now, Baby Blue"
#album.tracks.create! :number => 7, :name => "Mr. Tambourine Man"
#album.tracks.create! :number => 8, :name => "Subterranean Homesick Blues"
#album.tracks.create! :number => 9, :name => "Like a Rolling Stone"

#album = bob.albums.create! :name => "Together Through Life"
#album.tracks.create! :number => 1, :name => "Beyond Here Lies Nothin'"
#album.tracks.create! :number => 1, :name => "Life is Hard"

munson = Author.create! :author_last_name => "Munson",  :author_first_name => "Derek", :website => "http://www.enemypie.com/", :author_id => "1"
book = munson.books.create! :title => "Enemy Pie", :isbn => "978-0811827782", :amazon_id => "1266096933", :price => "10.87", :description => "In this funny yet endearing story, one little boy learns an effective recipes for turning your best enemy into your best friend. Accompanied by charming illustrations, Enemy Pie serves up a sweet lesson in the difficulties and ultimate rewards of making new friends.", :book_id => "1", :author_id => "1", :amazon_url => "http://www.amazon.com/Enemy-Pie-Reading-Rainbow-book/dp/081182778X/ref=sr_1_1?ie=UTF8&s=books&qid=http://www.amazon.com/Enemy-Pie-Reading-Rainbow-book/dp/081182778X/ref=sr_1_1?ie=UTF8&s=books&qid=1266096933&sr=1-1&sr=1-1", :itunes_url => "http://itunes.apple.com/us/app/id355474406?mt=8",
#bookcharacter = munson.bookcharacter.create! :animal_category => "twolegged", :animal_type => "boy", :book_id => "1"

carle = Author.create! :author_last_name => "Carle", :author_first_name => "Eric" 
book = carle.books.create! :title => "The Very Hungry Caterpillar", :isbn => "978-0399226908", :amazon_id => "1266097868", :price => "7.91", :description => "Children will be fascinated by the caterpillar‚ varied diet and miraculous transformation into a beautiful butterfly.", :book_id => "5",
:author_id => "5", 
:itunes_url => "http://itunes.apple.com/WebObjects/MZStore.woa/wa/viewAudiobook?id=280363317&s=143441",   
:amazon_url => "http://www.amazon.com/Very-Hungry-Caterpillar-Eric-Carle/dp/0399226907/ref=sr_1_1?ie=UTF8&s=books&qid=1266097868&sr=1-1",
#bookcharacter = carle.bookcharacters.create! :animal_category => "hundreds", :animal_type => "caterpillar", :book_id => "5",
#bookcharacter = carle.bookcharacters.create! :animal_category => "eight", :animal_type => "butterfly", :book_id => "5"

book = carle.books.create! :title => "The Very Quiet Cricket", :isbn => "978-0399218859", :amazon_id => "1266098070", :price => "9.99", :description => "Your child will delight in the surprise at the end of the book and in knowing that every creature can find its voice, however silent or joyous.",
:book_id => "6", :author_id => "5", :amazon_url => "http://www.amazon.com/Very-Quiet-Cricket-Eric-Carle/dp/0399218858/ref=sr_1_1?ie=UTF8&s=books&qid=1266098070&sr=1-1",
#bookcharacter = carle.bookcharacters.create! :animal_category => "eight", :animal_type => "cricket", :book_id => "6"

boynton = Author.create! :author_last_name => "Boynton", :author_first_name => "Sandra" 
book = boynton.books.create! :title => "Moo, Baa, La La La", :isbn => "978-0671449018", :amazon_id => "1266097571", :price => "7.91", :description => "This is a fun rhyming book with brilliant illustrations and animal sounds for you to make.", :book_id => "5",
:author_id => "3", 
:itunes_url => "http://www.amazon.com/Moo-Baa-Sandra-Boynton/dp/067144901X/ref=sr_1_8?ie=UTF8&s=books&qid=1266097571&sr=1-8"

brownmw = Author.create! :author_last_name => "Brown", :author_first_name => "Margaret Wise" 
book = brownmw.books.create! :title => "The Runaway Bunny", :isbn => "978-0060775827", :amazon_id => "1266097741", :price => "8.99", :description => "A little bunny keeps running away from his mother in an imaginative game of verbal hide-and-seek. Children will be profoundly comforted by this lovingly steadfast mother who finds her child every time.", :book_id => "4", :author_id => "4", 
:amazon_url => "http://www.amazon.com/Runaway-Bunny-Margaret-Wise-Brown/dp/0060775823/ref=sr_1_1?ie=UTF8&s=books&qid=1266097741&sr=1-1"

  

### A Pluto.jl notebook ###
# v0.15.1

using Markdown
using InteractiveUtils

# ╔═╡ 9b346790-e286-11eb-0119-5717075d85b1
begin
	import Pkg
	Pkg.activate(mktempdir())
	Pkg.add([
		Pkg.PackageSpec(name="ImageIO", version="0.5"),
		Pkg.PackageSpec(name="ImageShow", version="0.2"),
		Pkg.PackageSpec(name="FileIO", version="1.6"),
		Pkg.PackageSpec(name="PNGFiles", version="0.3.6"),
		Pkg.PackageSpec(name="Colors", version="0.12"),
		Pkg.PackageSpec(name="ColorVectorSpace", version="0.8"),
		Pkg.PackageSpec(name="PlutoUI", version="0.7"), 
		Pkg.PackageSpec(name="HypertextLiteral", version="0.5")
	])

	using Colors, ColorVectorSpace, ImageShow, FileIO
	using PlutoUI
	using HypertextLiteral
end

# ╔═╡ 938f39db-46ff-47b1-b560-4e7ef1d5a71f
md"""

# WORKING WITH IMAGES AND ARRAYS




"""

# ╔═╡ 6d0bfc63-58b8-4c0a-831d-99b55f23aa4c
md"""
# Data: Images (as an example of data)

Let's start off by looking at images and how we can process them. Our goal is to process the data contained in an image in some way, which we will do by developing and coding certain algorithms.

If we open an image on our computer or the web and zoom in enough, we will see that it consists of many tiny squares, or pixels ("picture elements"). Each pixel is a block of one single colour, and the pixels are arranged in a two-dimensional square grid.

You probably already know that these pixels are stored in a computer numerically perhaps in some form of RGB (red,green,blue) format. This is the computer's represenation of the data.

Note that an image is already an approximation of the real world – it is a two-dimensional, discrete representation of a three-dimensional reality.


"""

# ╔═╡ 57c3fd2c-8b68-4cbd-b416-7c1be9fd3116
md"""

# Input and Visualize: loading and viewing an Image (in Julia)


### Downloading an image from the internet or a local file

We can use the `Images.jl` package to load an image file in three steps.

Step 1: (from internet) we specify the URL (web address) to download from:
(note that Pluto places results before commands because some people believe output is more interesting than code. This takes some getting used to.)




"""

# ╔═╡ b209933c-e856-4b73-9882-3de8b1176bac
url = "https://user-images.githubusercontent.com/6933510/107239146-dcc3fd00-6a28-11eb-8c7b-41aaf6618935.png"

# ╔═╡ 42d5255b-04e4-4409-80f1-f414bc73c809
md"""
Step 2: Now we use the aptly-named download function to download the image file to our own computer. (Philip is Prof. Edelman's corgi.)



"""


# ╔═╡ 690f0fe3-94ec-4574-81ac-a1b1182f535a
philip_filename = download(url) # download to a local file. The filename is returned

# ╔═╡ ca3dec0b-b442-4141-b91e-729717e58c39
md"""
Step 3: Using the Images.jl package (loaded at the start of this notebook; scroll up and take a look.) we can load the file, which automatically converts it into usable data. We'll store the result in a variable. (Remember the code is after the output.)





"""

# ╔═╡ 6a325baa-d6cb-4a72-80d3-f614c7867bbf
philip = load(philip_filename)

# ╔═╡ 373a7381-fee6-4980-8aa3-5a2070db7d60


# ╔═╡ ed6807c5-9198-4c8b-b47c-96e0db812aff


# ╔═╡ a087ddc2-bfb0-4cf1-a1f8-9a5fe4694614


# ╔═╡ Cell order:
# ╟─938f39db-46ff-47b1-b560-4e7ef1d5a71f
# ╠═9b346790-e286-11eb-0119-5717075d85b1
# ╟─6d0bfc63-58b8-4c0a-831d-99b55f23aa4c
# ╟─57c3fd2c-8b68-4cbd-b416-7c1be9fd3116
# ╠═b209933c-e856-4b73-9882-3de8b1176bac
# ╟─42d5255b-04e4-4409-80f1-f414bc73c809
# ╠═690f0fe3-94ec-4574-81ac-a1b1182f535a
# ╟─ca3dec0b-b442-4141-b91e-729717e58c39
# ╠═6a325baa-d6cb-4a72-80d3-f614c7867bbf
# ╠═373a7381-fee6-4980-8aa3-5a2070db7d60
# ╠═ed6807c5-9198-4c8b-b47c-96e0db812aff
# ╠═a087ddc2-bfb0-4cf1-a1f8-9a5fe4694614

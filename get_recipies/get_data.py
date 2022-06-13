from bs4 import BeautifulSoup
import requests


def get_dish_instructions(url, file_num):
    print(url)
    r = requests.get(url)
    soup = BeautifulSoup(r.text, features="html.parser")
    instructions = soup.find("ol")
    if instructions == None:
        return 0
    instructions = instructions.find_all("li")
    # print(instructions)
    # print(file_num)

    f = open(f"document{file_num}.txt", "a")
    dish_name = soup.find("h1").text.strip()
    f.write(dish_name + "\n")
    for line in instructions:
        f.write(line.text + "\n")
    return 1


def get_dish_urls(url):
    r = requests.get(url)
    soup = BeautifulSoup(r.text, features="html.parser")
    dishes = soup.find("ul", id="artlist")
    file_num = 0
    print("writing...")
    for i, dish in enumerate(dishes):
        if i % 2 != 0:
            dish_url = dish.find("a")["href"]
            file_num += get_dish_instructions(dish_url, file_num)
    print("done")


def main():
    get_dish_urls("https://based.cooking/")


if __name__ == "__main__":
    main()


# clone depot
```
git clone https://github.com/francoisCDA/clickcounter.git 
cd counterclic
```



# docker build 
```
docker build -t counterclic .
```

# docker create countainer

```
docker run --name testcount -d -p 8080:80 counterclic
```

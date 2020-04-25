# API詳細

## すべてのPhotoを取得する

```
{
  allPhotos {
    id
    name
    category
  }
}
```

## Photoの作成

```
mutation {
  postPhoto(input:{
    attributes: {
      name: "nameの値"
      description: "descriptionの値"
    }
  }) {
    photo {
      id
      name
    }
  }
}
```
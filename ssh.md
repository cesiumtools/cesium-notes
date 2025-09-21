# SSH cheat sheet

## Kapcsolódás
`ssh user@<TARGET>`

## Alternatív port
`ssh -p <PORT> user@<TARGET>`

## Gyors kulcs alapú beállítás (ha nincs kulcs)
`ssh-keygen -t ed25519`
`ssh-copy-id -i ~/.ssh/id_ed25519.pub user@<TARGET>`

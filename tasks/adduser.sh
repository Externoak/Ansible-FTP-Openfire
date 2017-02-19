echo "Add"
ldapadd -x -D cn=admin,dc=example,com -W -f usuarios.ldif
echo "end"

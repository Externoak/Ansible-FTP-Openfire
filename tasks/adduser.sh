echo "Add"
ldapadd -x -D cn=admin,dc=example,dc=com -W -f usuarios.ldif
echo "end"

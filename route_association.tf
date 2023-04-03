resource "aws_route_table_association" "public" {
  subnet_id = aws_subnet.main.id
  route_table_id = aws_route_table.default.id
}
using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Demo.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class updateOrdertable : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "OrederDate",
                table: "Orders",
                newName: "OrderDate");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.RenameColumn(
                name: "OrderDate",
                table: "Orders",
                newName: "OrederDate");
        }
    }
}

using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Demo.Persistence.Migrations
{
    /// <inheritdoc />
    public partial class FixPrice : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Items_UnitOfMeasurements_UOMId",
                table: "Items");

            migrationBuilder.AddForeignKey(
                name: "FK_Items_UnitOfMeasurements_UOMId",
                table: "Items",
                column: "UOMId",
                principalTable: "UnitOfMeasurements",
                principalColumn: "Id");
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DropForeignKey(
                name: "FK_Items_UnitOfMeasurements_UOMId",
                table: "Items");

            migrationBuilder.AddForeignKey(
                name: "FK_Items_UnitOfMeasurements_UOMId",
                table: "Items",
                column: "UOMId",
                principalTable: "UnitOfMeasurements",
                principalColumn: "Id",
                onDelete: ReferentialAction.Cascade);
        }
    }
}

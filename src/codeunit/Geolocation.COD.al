/// <summary>
/// Codeunit Geolocation (ID 50004).
/// </summary>
namespace NamespaceGeolocationDemo;
using System.Utilities;

codeunit 50004 Geolocation
{
    // Calculate latitude from x,y,z coordinates
    // latitude = asin(z/Earthradius)
    // Earthradius = 6378137

    /// <summary>
    /// CalculateLatitude.
    /// </summary>
    /// <param name="x">Decimal, y.</param>
    /// <param name="y">Decimal.</param>
    /// <param name="z">Decimal.</param>
    /// <returns>Return value of type Decimal.</returns>
    procedure CalculateLatitude(x: Decimal; y: Decimal; z: Decimal): Decimal
    var
        Math: Codeunit Math;
    begin
        exit(Math.Asin(z / 6378137));
    end;

    // Calculate longitude from x,y,z coordinates
    // longitude = atan2(y,x)

    /// <summary>
    /// CalculateLongitude.
    /// </summary>
    /// <param name="x">Decimal.</param>
    /// <param name="y">Decimal.</param>
    /// <returns>Return value of type Decimal.</returns>
    procedure CalculateLongitude(x: Decimal; y: Decimal): Decimal
    var
        Math: Codeunit Math;
    begin
        exit(Math.Atan2(x, y));
    end;
}
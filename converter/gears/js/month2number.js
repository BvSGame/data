export function month2number(monthString) {
  const monthStringLower = monthString.toLowerCase();
  switch (monthStringLower) {
    case 'january':
    case 'jan':
      return 1;
    case 'february':
    case 'feb':
      return 2;
    case 'march':
    case 'mar':
      return 3;
    case 'april':
    case 'apr':
      return 4;
    case 'may':
      return 5;
    case 'june':
    case 'jun':
      return 6;
    case 'july':
    case 'jul':
      return 7;
    case 'august':
    case 'aug':
      return 8;
    case 'september':
    case 'sep':
      return 9;
    case 'october':
    case 'oct':
      return 10;
    case 'november':
    case 'nov':
      return 11;
    case 'december':
    case 'dec':
      return 12;
    default:
      return monthString;
  }
}
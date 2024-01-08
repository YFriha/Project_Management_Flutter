class DateUtils {
  // Méthode pour formater une date en chaîne de caractères au format 'dd/MM/yyyy'.
  static String formatDate(DateTime date) {
    return "${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}";
  }

  // Méthode pour calculer la différence en jours entre deux dates.
  static int daysDifference(DateTime date1, DateTime date2) {
    final difference = date2.difference(date1);
    return difference.inDays;
  }

// Vous pouvez ajouter d'autres méthodes utiles pour la manipulation des dates selon vos besoins.
}

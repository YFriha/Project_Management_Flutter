import 'package:flutter/material.dart';
import '../models/team_member.dart';

class TeamMemberItem extends StatelessWidget {
  final TeamMember teamMember;

  TeamMemberItem({required final this.teamMember});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      margin: EdgeInsets.symmetric(vertical: 8.0),
      child: ListTile(
        title: Text(teamMember.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Poste: ${teamMember.position}'),
            Text('Email: ${teamMember.email}'),
            // Ajoutez d'autres détails du membre de l'équipe en fonction de vos besoins.
          ],
        ),
        onTap: () {
          // Naviguez vers l'écran de détails du membre de l'équipe.
          // Navigator.push(context, MaterialPageRoute(builder: (context) => TeamMemberDetailsScreen(member: teamMember)));
        },
      ),
    );
  }
}

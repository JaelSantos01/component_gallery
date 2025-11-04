import 'package:flutter/material.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_card.dart';
import '../widgets/custom_avatar.dart';
import '../widgets/custom_badge.dart';
import '../widgets/custom_chip.dart';
import '../widgets/custom_alert.dart';
import '../widgets/custom_input.dart';
import '../widgets/custom_progress.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Galería de Componentes'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 1️⃣ BOTONES
            sectionTitle(Icons.radio_button_checked, "CustomButton", "Botones con variantes."),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomButton(text: "Primary", variant: ButtonVariant.primary),
                CustomButton(text: "Secondary", variant: ButtonVariant.secondary),
                CustomButton(text: "Outlined", variant: ButtonVariant.outlined),
              ],
            ),
            const SizedBox(height: 24),

            // 2️⃣ TARJETAS
            sectionTitle(Icons.credit_card, "CustomCard", "Tarjetas con estilos variados."),
            Column(
              children: const [
                CustomCard(
                  variant: CardVariant.elevated,
                  child: Text("Elevated Card"),
                ),
                SizedBox(height: 8),
                CustomCard(
                  variant: CardVariant.outlined,
                  child: Text("Outlined Card"),
                ),
                SizedBox(height: 8),
                CustomCard(
                  variant: CardVariant.filled,
                  child: Text("Filled Card"),
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 3️⃣ AVATARES
            sectionTitle(Icons.person, "CustomAvatar", "Avatares con formas distintas."),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                CustomAvatar(initials: "AB", variant: AvatarVariant.circular, backgroundColor: Colors.blue),
                CustomAvatar(initials: "CD", variant: AvatarVariant.rounded, backgroundColor: Colors.green),
                CustomAvatar(initials: "EF", variant: AvatarVariant.square, backgroundColor: Colors.orange),
              ],
            ),
            const SizedBox(height: 24),

            // 4️⃣ BADGES
            sectionTitle(Icons.label, "CustomBadge", "Badges de estado."),
            Wrap(
              spacing: 10,
              children: const [
                CustomBadge(text: "Info", variant: BadgeVariant.info),
                CustomBadge(text: "Success", variant: BadgeVariant.success),
                CustomBadge(text: "Warning", variant: BadgeVariant.warning),
                CustomBadge(text: "Error", variant: BadgeVariant.error),
              ],
            ),
            const SizedBox(height: 24),

            // 5️⃣ CHIPS
            sectionTitle(Icons.sell, "CustomChip", "Chips para selección o filtro."),
            Wrap(
              spacing: 10,
              children: const [
                CustomChip(label: "Default", variant: ChipVariant.defaultChip),
                CustomChip(label: "Outlined", variant: ChipVariant.outlined),
                CustomChip(label: "Colored", variant: ChipVariant.colored),
              ],
            ),
            const SizedBox(height: 24),

            // 6️⃣ ALERTAS
            sectionTitle(Icons.warning, "CustomAlert", "Mensajes informativos."),
            Column(
              children: [
                const CustomAlert(message: "Esto es una alerta informativa.", variant: AlertVariant.info),
                const SizedBox(height: 8),
                const CustomAlert(message: "Operación exitosa.", variant: AlertVariant.success),
                const SizedBox(height: 8),
                const CustomAlert(message: "Cuidado con esta acción.", variant: AlertVariant.warning),
                const SizedBox(height: 8),
                CustomAlert(
                  message: "Ha ocurrido un error.",
                  variant: AlertVariant.error,
                  onClose: () {},
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 7️⃣ INPUTS
            sectionTitle(Icons.text_fields, "CustomInput", "Campos de texto personalizados."),
            Column(
              children: const [
                CustomInput(hintText: "Standard Input", variant: InputVariant.standard, prefixIcon: Icons.text_fields),
                SizedBox(height: 8),
                CustomInput(hintText: "Outlined Input", variant: InputVariant.outlined, prefixIcon: Icons.email),
                SizedBox(height: 8),
                CustomInput(hintText: "Filled Input", variant: InputVariant.filled, prefixIcon: Icons.lock, obscureText: true),
              ],
            ),
            const SizedBox(height: 24),

            // 8️⃣ PROGRESS
            sectionTitle(Icons.hourglass_bottom, "CustomProgress", "Indicadores de progreso."),
            Column(
              children: const [
                CustomProgress(value: 0.7, variant: ProgressVariant.linear),
                SizedBox(height: 16),
                CustomProgress(value: 0.5, variant: ProgressVariant.circular),
                SizedBox(height: 16),
                CustomProgress(value: 0.4, variant: ProgressVariant.custom, color: Colors.green),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget sectionTitle(IconData icon, String title, String subtitle) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        children: [
          Icon(icon, color: Colors.blueAccent),
          const SizedBox(width: 8),
          Text(
            title,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          const SizedBox(width: 8),
          Text(
            subtitle,
            style: const TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}

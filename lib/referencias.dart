import 'package:flutter/material.dart';

class ReferenciasPage extends StatelessWidget {
  const ReferenciasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Center(
            child: Text(
                """Andrychowicz, M., Denil, M., Colmenarejo, S. G., Hoffman, M. W., Pfau, D., Schaul, T., and de Freitas, N. (2016). Learning to learn by gradient descent by gradient descent. CoRR, abs/1606.04474.

Arulkumaran, K., Deisenroth, M. P., Brundage, M., and Bharath, A. A. (2017). Deep reinforcement learning: A brief survey. IEEE Signal Processing Magazine, 34(6):26–38.

Brockman, G., Cheung, V., Pettersson, L., Schneider, J., Schulman, J., Tang, J., and Zaremba, W. (2016). Openai gym.

Chen, Y., Hoffman, M. W., Colmenarejo, S. G., Denil, M., Lillicrap, T. P., Botvinick, M., and de Freitas, N. (2017). Learning to learn without gradient descent by gradient descent.

Faury, L. and Vasile, F. (2018). Rover descent: Learning to optimize by learning to navigate on prototypical loss surfaces. CoRR, abs/1801.07222

François-Lavet, V., Henderson, P., Islam, R., Bellemare, M. G., and Pineau, J. (2018). An Introduction to Deep Reinforcement Learning. Now Foundations and Trends.

Fujimoto, S., van Hoof, H., and Meger, D. (2018). Addressing function approximation error in actor-critic methods. In Proceedings of the 35th ICML 2018, volume 80, pages 1582–1591.

Golovin, D., Karro, J., Kochanski, G., Lee, C., Song, X., and Zhang, Q. (2019). Gradientless descent: High-dimensional zeroth-order optimization. CoRR, abs/1911.06317

Haarnoja, T., Zhou, A., Hartikainen, K., Tucker, G., Ha, S., Tan, J., Kumar, V., Zhu, H., Gupta, A., Abbeel, P., and Levine, S. (2018). Soft actor-critic algorithms and applications. CoRR, abs/1812.05905.

Li, K. and Malik, J. (2016). Learning to optimize. CoRR, abs/1606.01885.

Li, K. and Malik, J. (2017). Learning to optimize neural nets. CoRR, abs/1703.00441.

Schulman, J., Wolski, F., Dhariwal, P., Radford, A., and Klimov, O. (2017). Proximal policy optimization algorithms. CoRR, abs/1707.06347.

Snyman, J. A. and Wilke, D. N. (2018). Practical Mathematical Optimization. Springer International Publishing.

Sutton, R. S. and Barto, A. G. (2018). Reinforcement Learning: An Introduction (Second Edition). MIT Press.

Williams, R. J. and Peng, J. (1991). Function optimization using connectionist reinforcement learning algorithms. Connection Science, 3(3):241–268.

Zhang, H., Sun, J., and Xu, Z. (2020). Learning to be global optimizer. CoRR, abs/2003.04521.

Zhang, H. and Yu, T. (2020). Taxonomy of Reinforcement Learning Algorithms, pages 125–133. Springer Singapore, Singapore.""",
                style: Theme.of(context).textTheme.bodyLarge),
          ),
        ),
      ),
    );
  }
}

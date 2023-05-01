import 'package:natv_app/models/channels.dart';

abstract class ChannelState {}

class ChannelLoading extends ChannelState {}

class ChannelLoaded extends ChannelState {
  final List<Channel> channels;

  ChannelLoaded(this.channels);
}

class ChannelError extends ChannelState {
  final String errorMessage;

  ChannelError(this.errorMessage);
}

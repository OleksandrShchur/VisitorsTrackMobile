import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:helloworld/models/event_model.dart';
import './event.dart';

class EventoListBloc extends Bloc<EventListEvent, EventListState> {
  final _userRepository = EventRepository();

  @override
  EventListState get initialState => InitialEventListState();

  @override
  Stream<EventListState> mapEventToState(EventListEvent event) async* {
    //yield Loading();
    if (event is GetEvents) {
      yield Loading();
      try {
        List<Event> eventi = await _userRepository.getAllEventos();
        yield Loaded(eventi: eventi, eventiFiltrati: eventi);
      } catch (e) {
        yield Error(errorMessage: e.toString());
      }
    } else if (event is DeleteEvent) {
      try {
        await _userRepository.deleteEventoById(event.evento.id);
        List<Event> eventi = await _userRepository.getAllEventos();

        yield Loaded(eventi: eventi, eventiFiltrati: eventi);
      } catch (e) {
        yield Error(errorMessage: e.toString());
      }
    } else if (event is AddEvent) {
      try {
        await _userRepository.insertEvento(event.evento);
        List<Event> eventi = await _userRepository.getAllEventos();

        yield Loaded(eventi: eventi, eventiFiltrati: eventi);
      } catch (e) {
        yield Error(errorMessage: e.toString());
      }
    } else if (event is FilterEvents) {
      try {
        List<Event> eventiF = await _userRepository.getEventsByDate(data: event.data);
        List<Event> eventi = await _userRepository.getAllEvents();

        yield Loaded(eventi: eventi, eventiFiltrati: eventiF);
      } catch (e) {
        yield Error(errorMessage: e.toString());
      }
    }
  }
}

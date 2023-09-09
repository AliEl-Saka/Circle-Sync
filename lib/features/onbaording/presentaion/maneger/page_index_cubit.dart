import 'package:flutter_bloc/flutter_bloc.dart';

class PageIndexCubit extends Cubit<int> {
  PageIndexCubit() : super(0);

  void setPageIndex(int index) {
    emit(index);
  }
}

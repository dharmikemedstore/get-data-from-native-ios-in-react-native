import React from 'react';
import {Text, View, TouchableOpacity, NativeModules} from 'react-native';

const HelloWorldApp = () => {
  const _changeView = () => {
    // this.done = true;
    // this.render();
    // NativeModules.ChangeViewBridge.changeToNativeView(
    //   'Welcome To ReactNative',
    //   'Dharmik',
    // );

    NativeModules.ChangeViewBridge.changeToNativeView(
      'data.doctor_name',
      'data.user_name',
      'data.identity',
      'data.room',
      'data.token',
      'data.time_slot_duration',
    );
  };

  return (
    <View
      style={{
        flex: 1,
        justifyContent: 'center',
        alignItems: 'center',
      }}>
      <Text
        style={{
          fontSize: 16,
          alignSelf: 'center',
        }}>
        WELLCOME TO REACT NATIVE VIEW
      </Text>
      <TouchableOpacity
        style={{
          width: '90%',
          height: 40,
          backgroundColor: 'blue',
          alignContent: 'center',
          justifyContent: 'center',
          borderRadius: 8,
          margin: 20,
        }}
        onPress={() => _changeView()}>
        <Text
          style={{
            color: 'white',
            fontSize: 15,
            alignSelf: 'center',
          }}>
          GOING TO IOS VIEW
        </Text>
      </TouchableOpacity>
    </View>
  );
};
export default HelloWorldApp;

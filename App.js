import React, {useEffect} from 'react';
import {Text, View, TouchableOpacity, NativeModules} from 'react-native';
import {
  addUnreadListener,
  startListening,
  stopListening,
  getUnreadCount,
  addCountListener,
} from './links/Message';

const HelloWorldApp = ({images}) => {
  useEffect(() => {
    console.log('HELLO REACT NATIVE ===>', images);
    startListening();

    getUnreadCount().then(count => {
      console.log('getUnreadCount => ', count);
    });
    addUnreadListener(({count}) => {
      console.log('count from native => ', count);
    });
    addCountListener(({count}) => {
      console.log('count from native => ', count);
    });
    return () => {
      // Anything in here is fired on component unmount.
      console.log('unmounting component');
      stopListening();
    };
  }, []);

  const _changeView = () => {
    NativeModules.ChangeViewBridge.changeToNativeView(
      'Dr. Dharmik',
      'data.user_name',
      'data.identity',
      'data.room',
      'data.token',
      'data.time_slot_duration',
    );
  };

  const _getData = () => {
    // NativeModules.ChangeViewBridge.doSomething(
    //   'Hello from JavaScript',
    //   (error, response) => {
    //     if (error) {
    //       console.error('ERROR', error);
    //     } else {
    //       console.log('RESPONSE', response);
    //     }
    //   },
    // );

    NativeModules.ChangeViewBridge.changeToNativeViewNew(
      'Dr. Dharmik',
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
      {/* <TouchableOpacity
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
          PRESENT IOS VIEW
        </Text>
      </TouchableOpacity> */}
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
          PUSH TO IOS VIEW
        </Text>
      </TouchableOpacity>
    </View>
  );
};
export default HelloWorldApp;

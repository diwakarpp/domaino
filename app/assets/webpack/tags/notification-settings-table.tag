<notification-settings-table>
  <table class="ui celled table">
    <thead>
      <tr>
        <th width="25%">
          Notification Method
        </th>
        <th width="50%">
          Recepient(s)
        </th>
        <th width="25%">
          Actions
        </th>
      </tr>
    </thead>

    <tbody>

      <tr>
        <td>
          E-mail notification
        </td>
        <td>
          <span each={ email in emails }>{email}</span>
        </td>
        <td>
          <configuration-form title="Email Notifications" cell="email"/>
        </td>
      </tr>

      <tr>
        <td>
          SMS
        </td>
        <td class={ disabled: !sms_recepient }>
          { sms_recepient || "Not configured" }
        </td>
        <td>
          <configuration-form title="SMS Notifications" cell="sms"/>
        </td>
      </tr>

      <tr>
        <td>
          Human Intelligence
        </td>
        <td class={ disabled: !human_intelligence }>
          { human_intelligence || "You didn't provide any devops contacts yet" }
        </td>
        <td>
          <configuration-form title="Human Intelligence" cell="human"/>
        </td>
      </tr>


    </tbody>
  </table>

  <script>
  import {settingsSelector} from '../selectors'

  this.subscribe(settingsSelector)

  </script>

  <style>
    notification-settings-table span {
      margin-right: 7px;
    }
  </style>

</notification-settings-table>

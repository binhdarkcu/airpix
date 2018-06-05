<div class="rmagic ">
    <div class="rmformpage_form_3_1" >
       <fieldset class="rmfieldset">
          <div class="rmrow">
             <div class="rmfield" for="form_3_1-element-5" style=""><label>Username<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="text" name="username" value="" labelstyle="" style="" required="" placeholder="Username" id="form_3_1-element-5"></div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="rm_reg_form_pw_3_1" style=""><label>Password<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="password" name="pwd" required="" placeholder="Password" id="rm_reg_form_pw_3_1" minlength="7" labelstyle="" style="height: 36px; border: 1px solid rgb(34, 34, 34); border-radius: 0px;"></div>
             <div class="rmnote" style="background-color: rgb(255, 255, 255); color: rgb(0, 0, 0);">
                <div class="rmprenote" style="border-bottom-color: rgb(255, 255, 255);"></div>
                <div class="rmnotecontent">Password must be at least 7 characters long.</div>
             </div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="rm_reg_form_pw_reentry" style=""><label>Enter password again<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="password" name="password_confirmation" required="" placeholder="Confirm Password" labelstyle="" style="height: 36px; border: 1px solid rgb(34, 34, 34); border-radius: 0px;" id="rm_reg_form_pw_reentry"></div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="form_3_1-element-8" style=""><label>Email<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="email" name="Email_13" placeholder="Email" class="rm_form_default_fields" required="" value="" id="form_3_1-element-8"></div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="form_3_1-element-9" style=""><label>First Name<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="text" name="Fname_14" required="" value="" id="form_3_1-element-9"></div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="form_3_1-element-10" style=""><label>Last Name<sup class="required">&nbsp;*</sup></label></div>
             <div class="rminput"><input type="text" name="Lname_15" required="" value="" id="form_3_1-element-10"></div>
          </div>
          <div class="rmrow">
             <div class="rmfield" for="form_3_1-element-11" style=""><label>User type</label></div>
             <div class="rminput">
                <ul class="rmradio" "="">
                   <li> <input id="form_3_1-element-11-0" type="radio" name="Radio_19" value="Pilot"><label for="form_3_1-element-11-0"> Pilot</label> </li>
                   <li> <input id="form_3_1-element-11-1" type="radio" name="Radio_19" value="Renter"><label for="form_3_1-element-11-1"> Renter</label> </li>
                </ul>
             </div>
          </div>
       </fieldset>
    </div>
    <div class="buttonarea"><input type="submit" value="Register" class=" btn btn-primary"></div>
</div>

<div id="connect-to-pilot">
    <div class="pilot-name">
        <b>Pilot name:</b>
        <span>{pilot_email}</span>
    </div>
    <div class="pilot-email">
        <b>Pilot email:</b>
        <span>{pilot_email}</span>
    </div>
    <div class="drone-info">
        <b>Drone Info:</b>
        <span>{user_drone_info}</span>
    </div>
    <div class="services-selection">
        <b>Services:</b>
        <select id="service_duration">
            <option value="15">15 minutes</option>
            <option value="30">30 minutes</option>
            <option value="60">1 hour</option>
            <option value="120">2 hours</option>
            <option value="180">3 hours</option>
            <option value="1440">All day</option>
        </select>
    </div>
    <div class="user-action">
        <button id="start_connecting">Connect!</button>
    </div>
</div>

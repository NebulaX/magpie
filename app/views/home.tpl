% rebase('./app/views/layout.tpl')
    <div class="container">
        <div class="row">
            <div class="col-md-4">
                <div class="room-select">
                    <ul>
                      <li class="room-selected">
                        <div class="fui-list"></div>
                      </li>
                      <li>
                        <div class="fui-arrow-right"></div>
                        <div class="room-name">
                            Dining Room
                        </div>
                      </li>
                      <li>
                        <div class="fui-arrow-right"></div>
                        <div class="room-name">
                            Living Room
                        </div>
                      </li>
                      <li>
                        <div class="fui-arrow-right"></div>
                        <div class="room-name">
                            Bedroom
                        </div>
                      </li>
                      <li>
                        <div class="fui-arrow-right"></div>
                        <div class="room-name">
                            Bathroom
                        </div>
                      </li>
                    </ul>
                </div>
                <div class="hud">
                    <div class="btn-group" id="hud-controls">
                        <a class="btn btn-primary active">
                            <span class="fui-eye"></span>
                        </a>
                        <a class="btn btn-primary">
                            <span class="fui-user"></span>
                        </a>
                        <a class="btn btn-primary" disabled = "disabled">
                            <span class="fui-cross"></span>
                        </a>
                        <a class="btn btn-primary" disabled = "disabled">
                            <span class="fui-cross"></span>
                        </a>
                        <a class="btn btn-primary" disabled = "disabled">
                            <span class="fui-cross"></span>
                        </a>
                    </div>
                    <div id="showhud">
                        <div id = "hud-temp">
                            <span id="temp"></span><sup>o</sup>C
                        </div>
                        <div id = "hud-people">
                        </div>
                    </div>
                </div>
            </div>
            <div class="col-md-8 stats">
                <div class="row">
                    <div class="col-md-4 switch-menu" id="deviceList">
                        <ul>
                        % for switch in switches:
                            <li class="swt-list"><span class="swt-name"> {{switch[1]}} </span>
                            % if switch[2] == "on":
                                <input type="checkbox" data-toggle="switch" id="{{switch[0]}}" checked>
                            % else:
                                <input type="checkbox" data-toggle="switch" id="{{switch[0]}}">
                            % end
                            </li>
                        % end
                        </ul>
                    </div>
                    <div class="col-md-8 view-pane">
                        <!-- <img id="scatter" src="./images/graph.gif"> -->
                        <div id="switchDetails">
                            % for switch in switches:
                                % if switch[0] == "B1":
                                    <div id = "slider">
                                        <input id="valueslider" data-slider-id='ex1Slider' type="text" data-slider-min="0" data-slider-max="15" data-slider-step="1" data-slider-value="{{switch[4]}}"/>
                                    </div>
                                % else:
                                    % break
                                % end
                            % end

                            <div id = "timer" class = "row">
                                <div id = "currentTimer" class = "col-md-7">
                                    NA
                                </div>
                                <div id = "timerForm" class = "col-md-5">
                                    <input type = "text" id = "timerHours" class = "timerField form-control" placeholder = "Hours">
                                    <input type = "text" id = "timerMinutes" class = "timerField form-control" placeholder = "Minutes">
                                    <span id = "setTimerBtn" class = "btn btn-primary btn-xs">
                                        Set timer
                                    </span>
                                </div>
                            </div>
                            <button id = "notificationBtn" class = "btn btn-info btn-lg" data-toggle = "modal" data-target = "#notModal">
                                <span class = "fui-mail"></span>
                            </button>
                        </div>
                        <!-- <div id="view-pane-filler"></div> -->
                        <div id="scatter" style="width: 71%; height: 200px;"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Notification Modal -->
    <div class="modal fade" id="notModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                        &times;
                    </button>
                    <h4 class="modal-title" id="myModalLabel">Notifications</h4>
                </div>
                <div class="modal-body" id = "notificationBody">
                    No Notifications !
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primany btn-xs" data-dismiss="modal">Close</button>
                </div>
            </div>
        </div>
    </div>
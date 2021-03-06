<div class="row content">
    <div class="block col-xs-12 col-sm-12 col-lg-offset-1 col-lg-10">
        <h3 class="col-sm-12 title"><%t Home.ResultPower %></h3>
        <table class="table table-responsive">
            <thead>
                <tr>
                    <td><%t Home.CompanyName %></td>
                    <td><%t Home.PlanName %></td>
                    <td><%t Home.DailyFixedCharge %></td>
                    <td><%t Home.VariableRate %></td>
                    <td><%t Home.GST %></td>
                    <td><%t Home.PPD %></td>
                    <td><%t Home.EstimatePerMonth %></td>
                    <td><%t Home.SpecialInfo %></td>
                    <td></td>
                </tr>
            </thead>
            <tbody>
                <% loop $PowerPlans.Sort(cost, ASC) %>
                <tr>
                    <td>$Company.Name</td>
                    <td>$Name</td>
                    <td>$DailyCharge</td>
                    <td>$Rate</td>
                    <td>$GST.Nice</td>
                    <td>$PPD.Nice</td>
                    <td>$cost.Nice</td>
                    <td>$Special</td>
                    <td><a href="signup?power={$ID}">Sign up</a></td>
                </tr>
                <% end_loop %>
            </tbody>
        </table>
        <% if $withGas %>
        <h3 class="col-sm-12 title"><%t Home.ResultGas %></h3>
        <table class="table table-responsive">
            <thead>
            <tr>
                <td><%t Home.CompanyName %></td>
                <td><%t Home.PlanName %></td>
                <td><%t Home.DailyFixedCharge %></td>
                <td><%t Home.VariableRate %></td>
                <td><%t Home.GST %></td>
                <td><%t Home.PPD %></td>
                <td><%t Home.EstimatePerMonth %></td>
            </tr>
            </thead>
            <tbody>
                <% loop $GasPlans.Sort(cost, ASC) %>
                <tr>
                    <td>$Company.Name</td>
                    <td>$Name</td>
                    <td>$DailyCharge</td>
                    <td>$Rate</td>
                    <td>$GST.Nice</td>
                    <td>$PPD.Nice</td>
                    <td>$cost.Nice</td>
                    <td><a href="signup?gas={$ID}">Sign up</a></td>
                </tr>
                <% end_loop %>
            </tbody>
        </table>
        <% end_if %>
    </div>
</div>


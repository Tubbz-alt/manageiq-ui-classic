class ApplicationHelper::Toolbar::InfraNetworkingsCenter < ApplicationHelper::Toolbar::Basic
  button_group('infra_networking_policy', [
                                          select(
                                            :infra_networking_policy_choice,
                                            'fa fa-shield fa-lg',
                                            t = N_('Policy'),
                                            t,
                                            :enabled => false,
                                            :onwhen  => "1+",
                                            :items   => [
                                              button(
                                                :infra_networking_tag,
                                                'pficon pficon-edit fa-lg',
                                                N_('Edit Tags for the selected Network Elements'),
                                                N_('Edit Tags'),
                                                :url_parms => "main_div",
                                                :enabled   => false,
                                                :onwhen    => "1+"),
                                            ]
                                          ),
                                        ])
end

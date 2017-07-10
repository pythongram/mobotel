.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;
.super Ljava/lang/Object;
.source "SpecialNotificationsActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    .prologue
    .line 95
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 21
    .param p2, "view"    # Landroid/view/View;
    .param p3, "i"    # I
    .param p4, "l"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 98
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsVibrateRow:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v11

    move/from16 v0, p3

    if-ne v0, v11, :cond_7f

    .line 99
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 100
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "Vibrate"

    const v12, 0x7f070573

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 101
    const/4 v11, 0x5

    new-array v11, v11, [Ljava/lang/CharSequence;

    const/4 v12, 0x0

    const-string v13, "VibrationDisabled"

    const v14, 0x7f070575

    .line 102
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    const-string v13, "SettingsDefault"

    const v14, 0x7f0707b8

    .line 103
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x2

    const-string v13, "SystemDefault"

    const v14, 0x7f0707e7

    .line 104
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x3

    const-string v13, "Short"

    const v14, 0x7f07050c

    .line 105
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x4

    const-string v13, "Long"

    const v14, 0x7f0702f9

    .line 106
    invoke-static {v13, v14}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    new-instance v12, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$1;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$1;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;)V

    .line 101
    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 129
    const-string v11, "Cancel"

    const v12, 0x7f0700fe

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x0

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    .line 212
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_7e
    :goto_7e
    return-void

    .line 131
    :cond_7f
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsSoundRow:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v11

    move/from16 v0, p3

    if-ne v0, v11, :cond_e9

    .line 133
    :try_start_89
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    .local v10, "tmpIntent":Landroid/content/Intent;
    const-string v11, "android.intent.extra.ringtone.TYPE"

    const/4 v12, 0x2

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 135
    const-string v11, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v12, 0x1

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 136
    const-string v11, "android.intent.extra.ringtone.DEFAULT_URI"

    const/4 v12, 0x2

    invoke-static {v12}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v12

    invoke-virtual {v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 137
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "SpecialNotifications"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 138
    .local v9, "preferences":Landroid/content/SharedPreferences;
    const/4 v3, 0x0

    .line 140
    .local v3, "currentSound":Landroid/net/Uri;
    const/4 v4, 0x0

    .line 141
    .local v4, "defaultPath":Ljava/lang/String;
    sget-object v5, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 142
    .local v5, "defaultUri":Landroid/net/Uri;
    if-eqz v5, :cond_b9

    .line 143
    invoke-virtual {v5}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    .line 146
    :cond_b9
    const-string v11, "sound_path_sc"

    invoke-interface {v9, v11, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 147
    .local v8, "path":Ljava/lang/String;
    if-eqz v8, :cond_d0

    const-string v11, "NoSound"

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_d0

    .line 148
    invoke-virtual {v8, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_e4

    .line 149
    move-object v3, v5

    .line 155
    :cond_d0
    :goto_d0
    const-string v11, "android.intent.extra.ringtone.EXISTING_URI"

    invoke-virtual {v10, v11, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 156
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    const/16 v12, 0xc

    invoke-virtual {v11, v10, v12}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_dc
    .catch Ljava/lang/Exception; {:try_start_89 .. :try_end_dc} :catch_dd

    goto :goto_7e

    .line 157
    .end local v3    # "currentSound":Landroid/net/Uri;
    .end local v4    # "defaultPath":Ljava/lang/String;
    .end local v5    # "defaultUri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "tmpIntent":Landroid/content/Intent;
    :catch_dd
    move-exception v6

    .line 158
    .local v6, "e":Ljava/lang/Exception;
    const-string v11, "tmessages"

    invoke-static {v11, v6}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_7e

    .line 151
    .end local v6    # "e":Ljava/lang/Exception;
    .restart local v3    # "currentSound":Landroid/net/Uri;
    .restart local v4    # "defaultPath":Ljava/lang/String;
    .restart local v5    # "defaultUri":Landroid/net/Uri;
    .restart local v8    # "path":Ljava/lang/String;
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    .restart local v10    # "tmpIntent":Landroid/content/Intent;
    :cond_e4
    :try_start_e4
    invoke-static {v8}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_e7
    .catch Ljava/lang/Exception; {:try_start_e4 .. :try_end_e7} :catch_dd

    move-result-object v3

    goto :goto_d0

    .line 160
    .end local v3    # "currentSound":Landroid/net/Uri;
    .end local v4    # "defaultPath":Ljava/lang/String;
    .end local v5    # "defaultUri":Landroid/net/Uri;
    .end local v8    # "path":Ljava/lang/String;
    .end local v9    # "preferences":Landroid/content/SharedPreferences;
    .end local v10    # "tmpIntent":Landroid/content/Intent;
    :cond_e9
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsLedRow:I
    invoke-static {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v11

    move/from16 v0, p3

    if-ne v0, v11, :cond_7e

    .line 161
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    if-eqz v11, :cond_7e

    .line 165
    new-instance v7, Landroid/widget/LinearLayout;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v7, v11}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 166
    .local v7, "linearLayout":Landroid/widget/LinearLayout;
    const/4 v11, 0x1

    invoke-virtual {v7, v11}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 167
    new-instance v2, Lorg/telegram/ui/Components/ColorPickerView;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v2, v11}, Lorg/telegram/ui/Components/ColorPickerView;-><init>(Landroid/content/Context;)V

    .line 168
    .local v2, "colorPickerView":Lorg/telegram/ui/Components/ColorPickerView;
    const/4 v11, -0x2

    const/4 v12, -0x2

    const/16 v13, 0x11

    invoke-static {v11, v12, v13}, Lorg/telegram/ui/Components/LayoutHelper;->createLinear(III)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v11

    invoke-virtual {v7, v2, v11}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 170
    sget-object v11, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v12, "SpecialNotifications"

    const/4 v13, 0x0

    invoke-virtual {v11, v12, v13}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v9

    .line 171
    .restart local v9    # "preferences":Landroid/content/SharedPreferences;
    const-string v11, "color_sc"

    invoke-interface {v9, v11}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_195

    .line 172
    const-string v11, "color_sc"

    const v12, -0xff0100

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    .line 177
    :goto_13d
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-direct {v1, v11}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 178
    .restart local v1    # "builder":Landroid/app/AlertDialog$Builder;
    const-string v11, "LedColor"

    const v12, 0x7f0702dc

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 179
    invoke-virtual {v1, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 180
    const-string v11, "Set"

    const v12, 0x7f0704f0

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$2;

    invoke-direct {v12, p0, v2}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$2;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;Lorg/telegram/ui/Components/ColorPickerView;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 190
    const-string v11, "LedDisabled"

    const v12, 0x7f0702dd

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$3;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$3;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 200
    const-string v11, "Default"

    const v12, 0x7f0701c5

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    new-instance v12, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$4;

    invoke-direct {v12, p0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2$4;-><init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;)V

    invoke-virtual {v1, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v12

    invoke-virtual {v11, v12}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto/16 :goto_7e

    .line 174
    .end local v1    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_195
    const-string v11, "MessagesLed"

    const v12, -0xff0100

    invoke-interface {v9, v11, v12}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v2, v11}, Lorg/telegram/ui/Components/ColorPickerView;->setOldCenterColor(I)V

    goto :goto_13d
.end method

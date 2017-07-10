.class Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;
.super Lorg/telegram/ui/Adapters/BaseFragmentAdapter;
.source "SpecialNotificationsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListAdapter"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 265
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    invoke-direct {p0}, Lorg/telegram/ui/Adapters/BaseFragmentAdapter;-><init>()V

    .line 266
    iput-object p2, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->mContext:Landroid/content/Context;

    .line 267
    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .registers 2

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method

.method public getCount()I
    .registers 2

    .prologue
    .line 281
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->rowCount:I
    invoke-static {v0}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$400(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 286
    const/4 v0, 0x0

    return-object v0
.end method

.method public getItemId(I)J
    .registers 4
    .param p1, "i"    # I

    .prologue
    .line 291
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .registers 4
    .param p1, "i"    # I

    .prologue
    const/4 v0, 0x0

    .line 351
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsVibrateRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v1

    if-eq p1, v1, :cond_11

    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsSoundRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_12

    .line 356
    :cond_11
    :goto_11
    return v0

    .line 353
    :cond_12
    iget-object v1, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsLedRow:I
    invoke-static {v1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$300(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v1

    if-ne p1, v1, :cond_11

    .line 354
    const/4 v0, 0x1

    goto :goto_11
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 15
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v10, 0x3

    const v9, -0xff0100

    const/4 v8, 0x0

    const v6, 0x7f070573

    const/4 v7, 0x1

    .line 301
    invoke-virtual {p0, p1}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->getItemViewType(I)I

    move-result v2

    .line 302
    .local v2, "type":I
    if-nez v2, :cond_d2

    .line 303
    if-nez p2, :cond_18

    .line 304
    new-instance p2, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_18
    move-object v1, p2

    .line 307
    check-cast v1, Lorg/telegram/ui/Cells/TextDetailSettingsCell;

    .line 309
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->mContext:Landroid/content/Context;

    const-string v5, "SpecialNotifications"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 311
    .local v0, "preferences":Landroid/content/SharedPreferences;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsVibrateRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$000(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_9c

    .line 312
    const-string v4, "vibrate_sc"

    invoke-interface {v0, v4, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 313
    .local v3, "value":I
    if-nez v3, :cond_46

    .line 314
    const-string v4, "Vibrate"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SettingsDefault"

    const v6, 0x7f0707b8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 346
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v3    # "value":I
    :cond_45
    :goto_45
    return-object p2

    .line 315
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    .restart local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .restart local v3    # "value":I
    :cond_46
    if-ne v3, v7, :cond_5b

    .line 316
    const-string v4, "Vibrate"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "VibrationDisabled"

    const v6, 0x7f070575

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_45

    .line 317
    :cond_5b
    const/4 v4, 0x2

    if-ne v3, v4, :cond_71

    .line 318
    const-string v4, "Vibrate"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Short"

    const v6, 0x7f07050c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_45

    .line 319
    :cond_71
    if-ne v3, v10, :cond_86

    .line 320
    const-string v4, "Vibrate"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "Long"

    const v6, 0x7f0702f9

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_45

    .line 321
    :cond_86
    const/4 v4, 0x4

    if-ne v3, v4, :cond_45

    .line 322
    const-string v4, "Vibrate"

    invoke-static {v4, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "SystemDefault"

    const v6, 0x7f0707e7

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_45

    .line 324
    .end local v3    # "value":I
    :cond_9c
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->this$0:Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->settingsSoundRow:I
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;->access$200(Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity;)I

    move-result v4

    if-ne p1, v4, :cond_45

    .line 325
    const-string v4, "sound_sc"

    const-string v5, "SoundDefault"

    const v6, 0x7f07051c

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 326
    .local v3, "value":Ljava/lang/String;
    const-string v4, "NoSound"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c4

    .line 327
    const-string v4, "NoSound"

    const v5, 0x7f07036f

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    .line 329
    :cond_c4
    const-string v4, "Sound"

    const v5, 0x7f07051b

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4, v3, v8}, Lorg/telegram/ui/Cells/TextDetailSettingsCell;->setTextAndValue(Ljava/lang/String;Ljava/lang/String;Z)V

    goto/16 :goto_45

    .line 331
    .end local v0    # "preferences":Landroid/content/SharedPreferences;
    .end local v1    # "textCell":Lorg/telegram/ui/Cells/TextDetailSettingsCell;
    .end local v3    # "value":Ljava/lang/String;
    :cond_d2
    if-ne v2, v7, :cond_45

    .line 332
    if-nez p2, :cond_dd

    .line 333
    new-instance p2, Lorg/telegram/ui/Cells/TextColorCell;

    .end local p2    # "view":Landroid/view/View;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialNotificationsActivity$ListAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p2, v4}, Lorg/telegram/ui/Cells/TextColorCell;-><init>(Landroid/content/Context;)V

    .restart local p2    # "view":Landroid/view/View;
    :cond_dd
    move-object v1, p2

    .line 336
    check-cast v1, Lorg/telegram/ui/Cells/TextColorCell;

    .line 338
    .local v1, "textCell":Lorg/telegram/ui/Cells/TextColorCell;
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "SpecialNotifications"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 340
    .restart local v0    # "preferences":Landroid/content/SharedPreferences;
    const-string v4, "color_sc"

    invoke-interface {v0, v4}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_104

    .line 341
    const-string v4, "LedColor"

    const v5, 0x7f0702dc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "color_sc"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_45

    .line 343
    :cond_104
    const-string v4, "LedColor"

    const v5, 0x7f0702dc

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "MessagesLed"

    invoke-interface {v0, v5, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v5

    invoke-virtual {v1, v4, v5, v7}, Lorg/telegram/ui/Cells/TextColorCell;->setTextAndColor(Ljava/lang/String;IZ)V

    goto/16 :goto_45
.end method

.method public getViewTypeCount()I
    .registers 2

    .prologue
    .line 361
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .registers 2

    .prologue
    .line 296
    const/4 v0, 0x0

    return v0
.end method

.method public isEmpty()Z
    .registers 2

    .prologue
    .line 366
    const/4 v0, 0x0

    return v0
.end method

.method public isEnabled(I)Z
    .registers 3
    .param p1, "i"    # I

    .prologue
    .line 276
    const/4 v0, 0x1

    return v0
.end method

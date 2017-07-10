.class Lorg/telegram/ui/LaunchActivity$6;
.super Ljava/lang/Object;
.source "LaunchActivity.java"

# interfaces
.implements Lorg/telegram/ui/Components/RecyclerListView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/LaunchActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/LaunchActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/LaunchActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/LaunchActivity;

    .prologue
    .line 375
    iput-object p1, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/view/View;I)V
    .registers 16
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I

    .prologue
    const/4 v10, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    .line 378
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->drawerLayoutAdapter:Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;
    invoke-static {v8}, Lorg/telegram/ui/LaunchActivity;->access$700(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;

    move-result-object v8

    invoke-virtual {v8, p2}, Lorg/telegram/ui/Adapters/DrawerLayoutAdapter;->getId(I)I

    move-result v3

    .line 379
    .local v3, "id":I
    if-nez p2, :cond_2f

    .line 380
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 381
    .local v0, "args":Landroid/os/Bundle;
    const-string v8, "user_id"

    invoke-static {}, Lorg/telegram/messenger/UserConfig;->getClientUserId()I

    move-result v9

    invoke-virtual {v0, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 382
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ChatActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ChatActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 383
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    .line 524
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_2e
    :goto_2e
    return-void

    .line 384
    :cond_2f
    const/4 v8, 0x2

    if-ne v3, v8, :cond_68

    .line 385
    const-string v9, "chat_create"

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v8}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v10}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v9, v8}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 388
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/GroupCreateActivity;

    invoke-direct {v9}, Lorg/telegram/ui/GroupCreateActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 389
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_2e

    .line 390
    :cond_68
    const/4 v8, 0x3

    if-ne v3, v8, :cond_96

    .line 391
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 392
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v8, "onlyUsers"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 393
    const-string v8, "destroyAfterSelect"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 394
    const-string v8, "createSecretChat"

    invoke-virtual {v0, v8, v11}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 395
    const-string v8, "allowBots"

    invoke-virtual {v0, v8, v12}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 396
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 397
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto :goto_2e

    .line 398
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_96
    const/4 v8, 0x4

    if-ne v3, v8, :cond_106

    .line 399
    const-string v9, "broadcast_create"

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v8}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v8

    iget-object v8, v8, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    iget-object v10, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    # getter for: Lorg/telegram/ui/LaunchActivity;->actionBarLayout:Lorg/telegram/ui/ActionBar/ActionBarLayout;
    invoke-static {v10}, Lorg/telegram/ui/LaunchActivity;->access$100(Lorg/telegram/ui/LaunchActivity;)Lorg/telegram/ui/ActionBar/ActionBarLayout;

    move-result-object v10

    iget-object v10, v10, Lorg/telegram/ui/ActionBar/ActionBarLayout;->fragmentsStack:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v9, v8}, Lorg/telegram/messenger/MessagesController;->isFeatureEnabled(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    move-result v8

    if-eqz v8, :cond_2e

    .line 402
    sget-object v8, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v8, v9, v12}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 403
    .local v5, "preferences":Landroid/content/SharedPreferences;
    sget-boolean v8, Lorg/telegram/messenger/BuildVars;->DEBUG_VERSION:Z

    if-nez v8, :cond_ee

    const-string v8, "channel_intro"

    invoke-interface {v5, v8, v12}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v8

    if-eqz v8, :cond_ee

    .line 404
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 405
    .restart local v0    # "args":Landroid/os/Bundle;
    const-string v8, "step"

    invoke-virtual {v0, v8, v12}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 406
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ChannelCreateActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/ChannelCreateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 411
    .end local v0    # "args":Landroid/os/Bundle;
    :goto_e5
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 408
    :cond_ee
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ChannelIntroActivity;

    invoke-direct {v9}, Lorg/telegram/ui/ChannelIntroActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 409
    invoke-interface {v5}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    const-string v9, "channel_intro"

    invoke-interface {v8, v9, v11}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v8

    invoke-interface {v8}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_e5

    .line 412
    .end local v5    # "preferences":Landroid/content/SharedPreferences;
    :cond_106
    const/4 v8, 0x6

    if-ne v3, v8, :cond_11c

    .line 413
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ContactsActivity;

    invoke-direct {v9, v10}, Lorg/telegram/ui/ContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 414
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 415
    :cond_11c
    const/16 v8, 0xb

    if-ne v3, v8, :cond_133

    .line 416
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/TelehgramSettingsActivity;

    invoke-direct {v9}, Lorg/telegram/ui/TelehgramSettingsActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 417
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 418
    :cond_133
    const/16 v8, 0x8

    if-ne v3, v8, :cond_14a

    .line 419
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/SettingsActivity;

    invoke-direct {v9}, Lorg/telegram/ui/SettingsActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 420
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 425
    :cond_14a
    const/16 v8, 0xa

    if-ne v3, v8, :cond_161

    .line 426
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/CallLogActivity;

    invoke-direct {v9}, Lorg/telegram/ui/CallLogActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 427
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 428
    :cond_161
    const/16 v8, 0xc

    if-ne v3, v8, :cond_178

    .line 429
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/UpdateActivity;

    invoke-direct {v9, v10}, Lorg/telegram/ui/Telehgram/UpdateActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 430
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 431
    :cond_178
    const/16 v8, 0xe

    if-ne v3, v8, :cond_18f

    .line 432
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;

    invoke-direct {v9}, Lorg/telegram/ui/Telehgram/SpecialContacts/SpecialContactsActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 433
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 434
    :cond_18f
    const/16 v8, 0xd

    if-ne v3, v8, :cond_1aa

    .line 435
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/ui/Telehgram/filterScreen/FilterActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 436
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 437
    :cond_1aa
    const/16 v8, 0xf

    if-ne v3, v8, :cond_1c6

    .line 438
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 439
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;

    invoke-direct {v9, v0}, Lorg/telegram/ui/Telehgram/OnlineContactsActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 440
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 441
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1c6
    const/16 v8, 0x10

    if-ne v3, v8, :cond_1e2

    .line 442
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 443
    .restart local v0    # "args":Landroid/os/Bundle;
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;

    invoke-direct {v9}, Lorg/telegram/ui/Telehgram/answeringMachine/AnsweingMachineSettingsActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 444
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 445
    .end local v0    # "args":Landroid/os/Bundle;
    :cond_1e2
    const/16 v8, 0x11

    if-ne v3, v8, :cond_247

    .line 447
    new-instance v1, Landroid/app/Dialog;

    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    invoke-direct {v1, v8}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 448
    .local v1, "dialog":Landroid/app/Dialog;
    invoke-virtual {v1, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 449
    const v8, 0x7f030025

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->setContentView(I)V

    .line 450
    const v8, 0x7f0e00cf

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 451
    .local v6, "retry":Landroid/widget/TextView;
    const v8, 0x7f0e00bf

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 452
    .local v7, "retry2":Landroid/widget/TextView;
    const v8, 0x7f0e00cc

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/EditText;

    .line 453
    .local v4, "id_field":Landroid/widget/EditText;
    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 454
    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 455
    const-string v8, "fonts/rmedium.ttf"

    invoke-static {v8}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v8

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 456
    const v8, 0x7f0e00c1

    invoke-virtual {v1, v8}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 457
    .local v2, "find":Landroid/view/View;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 458
    new-instance v8, Lorg/telegram/ui/LaunchActivity$6$1;

    invoke-direct {v8, p0, v4, v1}, Lorg/telegram/ui/LaunchActivity$6$1;-><init>(Lorg/telegram/ui/LaunchActivity$6;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v2, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 479
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 482
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "find":Landroid/view/View;
    .end local v4    # "id_field":Landroid/widget/EditText;
    .end local v6    # "retry":Landroid/widget/TextView;
    .end local v7    # "retry2":Landroid/widget/TextView;
    :cond_247
    const/16 v8, 0x12

    if-ne v3, v8, :cond_25e

    .line 483
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/ThemeActivity;

    invoke-direct {v9}, Lorg/telegram/ui/ThemeActivity;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 484
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 486
    :cond_25e
    const/16 v8, 0x13

    if-ne v3, v8, :cond_279

    .line 488
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Landroid/content/Intent;

    sget-object v10, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-class v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v9, v10, v11}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->startActivity(Landroid/content/Intent;)V

    .line 489
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 494
    :cond_279
    const/4 v8, 0x7

    if-ne v3, v8, :cond_28f

    .line 495
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-direct {v9}, Lorg/telegram/ui/Telehgram/AntiReportfragment;-><init>()V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 496
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 498
    :cond_28f
    const/16 v8, 0x9

    if-ne v3, v8, :cond_2a6

    .line 499
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    new-instance v9, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;

    invoke-direct {v9, v10}, Lorg/telegram/ui/Telehgram/dlmanager/DownloadManagerActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v8, v9}, Lorg/telegram/ui/LaunchActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)V

    .line 500
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 515
    :cond_2a6
    const/16 v8, 0x14

    if-ne v3, v8, :cond_2cf

    .line 516
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    .line 517
    const-string v9, "Akhbarefotball"

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v8

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v9, v8, v11}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 518
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e

    .line 519
    :cond_2cf
    const/16 v8, 0x15

    if-ne v3, v8, :cond_2e

    .line 520
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    .line 521
    const-string v9, "themmobotel"

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v8

    # getter for: Lorg/telegram/ui/LaunchActivity;->mainFragmentsStack:Ljava/util/ArrayList;
    invoke-static {}, Lorg/telegram/ui/LaunchActivity;->access$900()Ljava/util/ArrayList;

    move-result-object v10

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/telegram/ui/ActionBar/BaseFragment;

    invoke-static {v9, v8, v11}, Lorg/telegram/messenger/MessagesController;->openByUserName(Ljava/lang/String;Lorg/telegram/ui/ActionBar/BaseFragment;I)V

    .line 522
    iget-object v8, p0, Lorg/telegram/ui/LaunchActivity$6;->this$0:Lorg/telegram/ui/LaunchActivity;

    iget-object v8, v8, Lorg/telegram/ui/LaunchActivity;->drawerLayoutContainer:Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;

    invoke-virtual {v8, v12}, Lorg/telegram/ui/ActionBar/DrawerLayoutContainer;->closeDrawer(Z)V

    goto/16 :goto_2e
.end method

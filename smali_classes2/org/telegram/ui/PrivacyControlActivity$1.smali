.class Lorg/telegram/ui/PrivacyControlActivity$1;
.super Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;
.source "PrivacyControlActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/PrivacyControlActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/PrivacyControlActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/PrivacyControlActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/PrivacyControlActivity;

    .prologue
    .line 124
    iput-object p1, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-direct {p0}, Lorg/telegram/ui/ActionBar/ActionBar$ActionBarMenuOnItemClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 9
    .param p1, "id"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 127
    const/4 v3, -0x1

    if-ne p1, v3, :cond_b

    .line 128
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->finishFragment()V

    .line 159
    :cond_a
    :goto_a
    return-void

    .line 129
    :cond_b
    if-ne p1, v6, :cond_a

    .line 130
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    if-eqz v3, :cond_a

    .line 134
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->currentType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$000(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-eqz v3, :cond_95

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-nez v3, :cond_95

    .line 135
    sget-object v3, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v4, "mainconfig"

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 136
    .local v1, "preferences":Landroid/content/SharedPreferences;
    const-string v3, "privacyAlertShowed"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 137
    .local v2, "showed":Z
    if-nez v2, :cond_95

    .line 138
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v3}, Lorg/telegram/ui/PrivacyControlActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 139
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # getter for: Lorg/telegram/ui/PrivacyControlActivity;->rulesType:I
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$100(Lorg/telegram/ui/PrivacyControlActivity;)I

    move-result v3

    if-ne v3, v6, :cond_88

    .line 140
    const-string v3, "WhoCanAddMeInfo"

    const v4, 0x7f0705a8

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 144
    :goto_54
    const-string v3, "AppName"

    const v4, 0x7f070092

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 145
    const-string v3, "OK"

    const v4, 0x7f0703d4

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lorg/telegram/ui/PrivacyControlActivity$1$1;

    invoke-direct {v4, p0, v1}, Lorg/telegram/ui/PrivacyControlActivity$1$1;-><init>(Lorg/telegram/ui/PrivacyControlActivity$1;Landroid/content/SharedPreferences;)V

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 152
    const-string v3, "Cancel"

    const v4, 0x7f0700fe

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 153
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/telegram/ui/PrivacyControlActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_a

    .line 142
    :cond_88
    const-string v3, "CustomHelp"

    const v4, 0x7f0701b0

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    goto :goto_54

    .line 157
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "preferences":Landroid/content/SharedPreferences;
    .end local v2    # "showed":Z
    :cond_95
    iget-object v3, p0, Lorg/telegram/ui/PrivacyControlActivity$1;->this$0:Lorg/telegram/ui/PrivacyControlActivity;

    # invokes: Lorg/telegram/ui/PrivacyControlActivity;->applyCurrentPrivacySettings()V
    invoke-static {v3}, Lorg/telegram/ui/PrivacyControlActivity;->access$200(Lorg/telegram/ui/PrivacyControlActivity;)V

    goto/16 :goto_a
.end method

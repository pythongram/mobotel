.class final Lcom/onesignal/GenerateNotification$1;
.super Ljava/lang/Object;
.source "GenerateNotification.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/onesignal/GenerateNotification;->showNotificationAsAlert(Lorg/json/JSONObject;Landroid/app/Activity;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$gcmJson:Lorg/json/JSONObject;

.field final synthetic val$notificationId:I


# direct methods
.method constructor <init>(Landroid/app/Activity;Lorg/json/JSONObject;I)V
    .registers 4

    .prologue
    .line 111
    iput-object p1, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iput-object p2, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    iput p3, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 14

    .prologue
    const/4 v12, 0x1

    .line 114
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    invoke-direct {v1, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 115
    .local v1, "builder":Landroid/app/AlertDialog$Builder;
    iget-object v9, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/GenerateNotification;->getTitle(Lorg/json/JSONObject;)Ljava/lang/CharSequence;
    invoke-static {v9}, Lcom/onesignal/GenerateNotification;->access$000(Lorg/json/JSONObject;)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 116
    iget-object v9, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v10, "alert"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 118
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 119
    .local v5, "buttonsLabels":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 121
    .local v2, "buttonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/onesignal/GenerateNotification$1;->val$activity:Landroid/app/Activity;

    iget-object v10, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    # invokes: Lcom/onesignal/GenerateNotification;->addAlertButtons(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V
    invoke-static {v9, v10, v5, v2}, Lcom/onesignal/GenerateNotification;->access$100(Landroid/content/Context;Lorg/json/JSONObject;Ljava/util/List;Ljava/util/List;)V

    .line 123
    move-object v6, v2

    .line 125
    .local v6, "finalButtonIds":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget v9, p0, Lcom/onesignal/GenerateNotification$1;->val$notificationId:I

    # invokes: Lcom/onesignal/GenerateNotification;->getNewBaseIntent(I)Landroid/content/Intent;
    invoke-static {v9}, Lcom/onesignal/GenerateNotification;->access$200(I)Landroid/content/Intent;

    move-result-object v3

    .line 126
    .local v3, "buttonIntent":Landroid/content/Intent;
    const-string v9, "action_button"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 127
    const-string v9, "from_alert"

    invoke-virtual {v3, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 128
    const-string v9, "onesignal_data"

    iget-object v10, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    invoke-virtual {v10}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 129
    iget-object v9, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v10, "grp"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_60

    .line 130
    const-string v9, "grp"

    iget-object v10, p0, Lcom/onesignal/GenerateNotification$1;->val$gcmJson:Lorg/json/JSONObject;

    const-string v11, "grp"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    :cond_60
    move-object v7, v3

    .line 134
    .local v7, "finalButtonIntent":Landroid/content/Intent;
    new-instance v4, Lcom/onesignal/GenerateNotification$1$1;

    invoke-direct {v4, p0, v6, v7}, Lcom/onesignal/GenerateNotification$1$1;-><init>(Lcom/onesignal/GenerateNotification$1;Ljava/util/List;Landroid/content/Intent;)V

    .line 152
    .local v4, "buttonListener":Landroid/content/DialogInterface$OnClickListener;
    new-instance v9, Lcom/onesignal/GenerateNotification$1$2;

    invoke-direct {v9, p0, v7}, Lcom/onesignal/GenerateNotification$1$2;-><init>(Lcom/onesignal/GenerateNotification$1;Landroid/content/Intent;)V

    invoke-virtual {v1, v9}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_6f
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_9c

    .line 160
    if-nez v8, :cond_83

    .line 161
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 159
    :cond_80
    :goto_80
    add-int/lit8 v8, v8, 0x1

    goto :goto_6f

    .line 162
    :cond_83
    if-ne v8, v12, :cond_8f

    .line 163
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_80

    .line 164
    :cond_8f
    const/4 v9, 0x2

    if-ne v8, v9, :cond_80

    .line 165
    invoke-interface {v5, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v1, v9, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    goto :goto_80

    .line 168
    :cond_9c
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 169
    .local v0, "alertDialog":Landroid/app/AlertDialog;
    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 170
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 171
    return-void
.end method

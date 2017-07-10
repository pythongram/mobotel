.class Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;
.super Ljava/lang/Object;
.source "SetPasswordActivity.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/SetPasswordActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    .prologue
    .line 263
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 16
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
    .local p1, "adapterView":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 266
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->changeenablePasscodeRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$600(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p3, v6, :cond_1b

    .line 267
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    new-instance v7, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 268
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->finishFragment()V

    .line 300
    .end local p2    # "view":Landroid/view/View;
    :cond_1a
    :goto_1a
    return-void

    .line 269
    .restart local p2    # "view":Landroid/view/View;
    :cond_1b
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->enablePasscodeRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$700(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p3, v6, :cond_58

    move-object v0, p2

    .line 270
    check-cast v0, Lorg/telegram/ui/Cells/TextCheckCell;

    .line 272
    .local v0, "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 273
    .local v4, "preferences":Landroid/content/SharedPreferences;
    const-string v6, "chat_password"

    const-string v8, ""

    invoke-interface {v4, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "chatPassword":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-eqz v6, :cond_4d

    .line 276
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    new-instance v7, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    const/4 v8, 0x2

    invoke-direct {v7, v8}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v6, v7}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 280
    :goto_47
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->finishFragment()V

    goto :goto_1a

    .line 278
    :cond_4d
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    new-instance v8, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {v8, v7}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    goto :goto_47

    .line 281
    .end local v0    # "cell":Lorg/telegram/ui/Cells/TextCheckCell;
    .end local v1    # "chatPassword":Ljava/lang/String;
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    :cond_58
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->hiddenInShareAlertRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$800(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p3, v6, :cond_8d

    .line 282
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 283
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    const-string v6, "hidden_sharealert"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 284
    .local v3, "hiddenShare":Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 285
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "hidden_sharealert"

    if-nez v3, :cond_89

    move v6, v7

    :goto_77
    invoke-interface {v2, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 286
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 287
    instance-of v6, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v6, :cond_1a

    .line 288
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v3, :cond_8b

    :goto_85
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto :goto_1a

    .restart local p2    # "view":Landroid/view/View;
    :cond_89
    move v6, v8

    .line 285
    goto :goto_77

    .end local p2    # "view":Landroid/view/View;
    :cond_8b
    move v7, v8

    .line 288
    goto :goto_85

    .line 290
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v3    # "hiddenShare":Z
    .end local v4    # "preferences":Landroid/content/SharedPreferences;
    .restart local p2    # "view":Landroid/view/View;
    :cond_8d
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/SetPasswordActivity$6;->this$0:Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    # getter for: Lorg/telegram/ui/Telehgram/SetPasswordActivity;->showHiddenNotifRow:I
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;->access$900(Lorg/telegram/ui/Telehgram/SetPasswordActivity;)I

    move-result v6

    if-ne p3, v6, :cond_1a

    .line 291
    sget-object v6, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v9, "mainconfig"

    invoke-virtual {v6, v9, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v4

    .line 292
    .restart local v4    # "preferences":Landroid/content/SharedPreferences;
    const-string v6, "show_notification"

    invoke-interface {v4, v6, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 293
    .local v5, "showNotif":Z
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 294
    .restart local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    const-string v9, "show_notification"

    if-nez v5, :cond_bf

    move v6, v7

    :goto_ac
    invoke-interface {v2, v9, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 295
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 296
    instance-of v6, p2, Lorg/telegram/ui/Cells/TextCheckCell;

    if-eqz v6, :cond_1a

    .line 297
    check-cast p2, Lorg/telegram/ui/Cells/TextCheckCell;

    .end local p2    # "view":Landroid/view/View;
    if-nez v5, :cond_c1

    :goto_ba
    invoke-virtual {p2, v7}, Lorg/telegram/ui/Cells/TextCheckCell;->setChecked(Z)V

    goto/16 :goto_1a

    .restart local p2    # "view":Landroid/view/View;
    :cond_bf
    move v6, v8

    .line 294
    goto :goto_ac

    .end local p2    # "view":Landroid/view/View;
    :cond_c1
    move v7, v8

    .line 297
    goto :goto_ba
.end method

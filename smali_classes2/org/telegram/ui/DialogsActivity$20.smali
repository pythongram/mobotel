.class Lorg/telegram/ui/DialogsActivity$20;
.super Ljava/lang/Object;
.source "DialogsActivity.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/DialogsActivity;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/DialogsActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/DialogsActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/DialogsActivity;

    .prologue
    .line 1298
    iput-object p1, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1301
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "mainconfig"

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1302
    .local v3, "preferences":Landroid/content/SharedPreferences;
    const-string v4, "chat_unlocked"

    invoke-interface {v3, v4, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1303
    .local v1, "chatUnlocked":Z
    const-string v4, "chat_password"

    const-string v5, ""

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1304
    .local v0, "chatPassword":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_29

    .line 1305
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v5, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    invoke-direct {v5, v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v4, v5}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 1325
    :goto_28
    return v7

    .line 1308
    :cond_29
    if-eqz v1, :cond_4a

    .line 1309
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 1310
    .local v2, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v4, "chat_unlocked"

    invoke-interface {v2, v4, v6}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1311
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1316
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u0646\u0645\u0627\u06cc\u0634 \u0644\u06cc\u0633\u062a \u0686\u062a \u0647\u0627\u06cc \u0642\u0641\u0644 \u0646\u0634\u062f\u0647"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 1317
    invoke-static {}, Lorg/telegram/messenger/Utilities;->restartApp()V

    goto :goto_28

    .line 1319
    .end local v2    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_4a
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    # getter for: Lorg/telegram/ui/DialogsActivity;->dialogsSearchAdapter:Lorg/telegram/ui/Adapters/DialogsSearchAdapter;
    invoke-static {v4}, Lorg/telegram/ui/DialogsActivity;->access$2800(Lorg/telegram/ui/DialogsActivity;)Lorg/telegram/ui/Adapters/DialogsSearchAdapter;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Adapters/DialogsSearchAdapter;->loadHints()V

    .line 1320
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    new-instance v5, Lorg/telegram/ui/Telehgram/SetPasswordActivity;

    const/4 v6, 0x4

    invoke-direct {v5, v6}, Lorg/telegram/ui/Telehgram/SetPasswordActivity;-><init>(I)V

    invoke-virtual {v4, v5, v7}, Lorg/telegram/ui/DialogsActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;Z)Z

    .line 1321
    iget-object v4, p0, Lorg/telegram/ui/DialogsActivity$20;->this$0:Lorg/telegram/ui/DialogsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/DialogsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u0646\u0645\u0627\u06cc\u0634 \u0644\u06cc\u0633\u062a \u0686\u062a \u0647\u0627\u06cc \u0642\u0641\u0644 \u0634\u062f\u0647"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_28
.end method

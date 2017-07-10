.class Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;
.super Ljava/lang/Object;
.source "ChatSettingsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->onItemClick(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    .prologue
    .line 363
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 12
    .param p1, "dialogInterface"    # Landroid/content/DialogInterface;
    .param p2, "i"    # I

    .prologue
    const/4 v8, 0x0

    .line 366
    sget-object v4, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v5, "turboconfig"

    invoke-virtual {v4, v5, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 367
    .local v0, "preferences":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide_typing"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 368
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "hide_reading"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 369
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mobileDataDownloadMask"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 370
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "wifiDownloadMask"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v6}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 372
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getMobileDataDownloadMask(J)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController;->mobileDataDownloadMask:I

    .line 373
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v5, v5, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->dialog_id:J
    invoke-static {v5}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$200(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)J

    move-result-wide v6

    invoke-static {v6, v7}, Lorg/telegram/ui/Telehgram/Turbo$Chat;->getWifiDownloadMask(J)I

    move-result v5

    iput v5, v4, Lorg/telegram/messenger/MediaController;->wifiDownloadMask:I

    .line 375
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1000(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    if-eqz v4, :cond_da

    .line 376
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    # getter for: Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->listView:Lorg/telegram/ui/Components/RecyclerListView;
    invoke-static {v4}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->access$1000(Lorg/telegram/ui/Telehgram/ChatSettingsActivity;)Lorg/telegram/ui/Components/RecyclerListView;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/RecyclerListView;->invalidateViews()V

    .line 379
    :cond_da
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2$6;->this$1:Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/ChatSettingsActivity$2;->this$0:Lorg/telegram/ui/Telehgram/ChatSettingsActivity;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/ChatSettingsActivity;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "Done"

    const v6, 0x7f0701e8

    invoke-static {v5, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v5, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    .line 380
    .local v1, "toast":Landroid/widget/Toast;
    invoke-virtual {v1}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    .line 381
    .local v2, "toastLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v2, v8}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 382
    .local v3, "toastTV":Landroid/widget/TextView;
    const-string v4, "fonts/rmedium.ttf"

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 383
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 384
    return-void
.end method

.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

.field final synthetic val$dialog:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V
    .registers 3
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    .prologue
    .line 173
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 12
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v9, 0x0

    .line 177
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v6}, Landroid/app/Dialog;->dismiss()V

    .line 178
    sget-object v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_4a

    sget-object v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    array-length v6, v6

    if-lez v6, :cond_4a

    .line 179
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/Telegram/Telegram Video"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 180
    .local v3, "path":Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const-class v7, Lorg/telegram/ui/Telehgram/cleaner/FileManagerActivity;

    invoke-direct {v1, v6, v7}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 181
    .local v1, "intent":Landroid/content/Intent;
    const-string v6, "path"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 182
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-virtual {v6, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->startActivity(Landroid/content/Intent;)V

    .line 195
    .end local v1    # "intent":Landroid/content/Intent;
    .end local v3    # "path":Ljava/lang/String;
    :goto_49
    return-void

    .line 184
    :cond_4a
    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 185
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x7f03004d

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const v8, 0x7f0e013f

    invoke-virtual {v6, v8}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    invoke-virtual {v0, v7, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 186
    .local v2, "layout":Landroid/view/View;
    const v6, 0x7f0e011c

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 188
    .local v4, "text":Landroid/widget/TextView;
    const-string v6, "NoFilesToDisplay"

    const v7, 0x7f070770

    invoke-static {v6, v7}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    new-instance v5, Landroid/widget/Toast;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;->this$1:Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;

    iget-object v6, v6, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v5, v6}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 190
    .local v5, "toast":Landroid/widget/Toast;
    const/16 v6, 0x11

    invoke-virtual {v5, v6, v9, v9}, Landroid/widget/Toast;->setGravity(III)V

    .line 191
    invoke-virtual {v5, v9}, Landroid/widget/Toast;->setDuration(I)V

    .line 192
    invoke-virtual {v5, v2}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 193
    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    goto :goto_49
.end method

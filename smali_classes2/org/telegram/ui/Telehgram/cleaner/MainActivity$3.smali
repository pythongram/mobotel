.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    .prologue
    .line 241
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 13
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v10, 0x0

    const v9, -0x707071

    .line 244
    sget-object v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->cache_dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    sget-object v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramAudio_dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    sget-object v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    sget-object v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_2c

    sget-object v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_9f

    .line 245
    :cond_2c
    new-instance v1, Landroid/app/Dialog;

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 246
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v7, 0x1

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 247
    const v7, 0x7f030026

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 248
    const v7, 0x7f0e00c8

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    .local v0, "cancle":Landroid/widget/TextView;
    const v7, 0x7f0e00d1

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 250
    .local v4, "taedd":Landroid/widget/TextView;
    const v7, 0x7f0e00d0

    invoke-virtual {v1, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 254
    .local v5, "text":Landroid/widget/TextView;
    const-string v7, "FildesDeleteAlert"

    const v8, 0x7f0706fb

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 255
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v8, "chatsMessageColor"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 256
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v8, "chatsMessageColor"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 257
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v7, v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v8, "chatsMessageColor"

    invoke-interface {v7, v8, v9}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setTextColor(I)V

    .line 259
    new-instance v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$1;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;Landroid/app/Dialog;)V

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    new-instance v7, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;

    invoke-direct {v7, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3$2;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 290
    .end local v0    # "cancle":Landroid/widget/TextView;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v4    # "taedd":Landroid/widget/TextView;
    :goto_9e
    return-void

    .line 278
    .end local v5    # "text":Landroid/widget/TextView;
    :cond_9f
    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v2

    .line 279
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v8, 0x7f03004d

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const v9, 0x7f0e013f

    invoke-virtual {v7, v9}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v2, v8, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 280
    .local v3, "layout":Landroid/view/View;
    const v7, 0x7f0e011c

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 282
    .restart local v5    # "text":Landroid/widget/TextView;
    const-string v7, "NoFiles"

    const v8, 0x7f070357

    invoke-static {v7, v8}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 283
    new-instance v6, Landroid/widget/Toast;

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$3;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v6, v7}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 284
    .local v6, "toast":Landroid/widget/Toast;
    const/16 v7, 0x11

    invoke-virtual {v6, v7, v10, v10}, Landroid/widget/Toast;->setGravity(III)V

    .line 285
    invoke-virtual {v6, v10}, Landroid/widget/Toast;->setDuration(I)V

    .line 286
    invoke-virtual {v6, v3}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 287
    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    goto :goto_9e
.end method

.class Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;
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
    .line 123
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 16
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    .line 126
    sget-object v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramImages_dir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_18

    sget-object v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramVideo_dir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-nez v11, :cond_18

    sget-object v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->telegramDocument_dir:Ljava/io/File;

    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    move-result v11

    if-eqz v11, :cond_9d

    .line 127
    :cond_18
    new-instance v1, Landroid/app/Dialog;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v1, v11}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 128
    .local v1, "dialog":Landroid/app/Dialog;
    const/4 v11, 0x1

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 129
    const v11, 0x7f030022

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->setContentView(I)V

    .line 130
    const v11, 0x7f0e00c8

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 131
    .local v0, "cancle":Landroid/widget/TextView;
    const v11, 0x7f0e005f

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 132
    .local v3, "image_text":Landroid/widget/TextView;
    const v11, 0x7f0e00c5

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    .line 133
    .local v9, "vide_text":Landroid/widget/TextView;
    const v11, 0x7f0e00c4

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v10

    .line 134
    .local v10, "vide_view":Landroid/view/View;
    const v11, 0x7f0e00c3

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 135
    .local v4, "image_view":Landroid/view/View;
    const v11, 0x7f0e00c6

    invoke-virtual {v1, v11}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 140
    .local v2, "doc_view":Landroid/view/View;
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v12, "chatsMessageColor"

    const v13, -0x707071

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 141
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    iget-object v11, v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->themePrefs:Landroid/content/SharedPreferences;

    const-string v12, "chatsMessageColor"

    const v13, -0x707071

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setTextColor(I)V

    .line 142
    new-instance v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$1;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 149
    new-instance v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$2;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$2;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v4, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    new-instance v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$3;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v10, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 197
    new-instance v11, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$4;

    invoke-direct {v11, p0, v1}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2$4;-><init>(Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;Landroid/app/Dialog;)V

    invoke-virtual {v2, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 221
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 237
    .end local v0    # "cancle":Landroid/widget/TextView;
    .end local v1    # "dialog":Landroid/app/Dialog;
    .end local v2    # "doc_view":Landroid/view/View;
    .end local v3    # "image_text":Landroid/widget/TextView;
    .end local v4    # "image_view":Landroid/view/View;
    .end local v9    # "vide_text":Landroid/widget/TextView;
    .end local v10    # "vide_view":Landroid/view/View;
    :goto_9c
    return-void

    .line 225
    :cond_9d
    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-virtual {v11}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 226
    .local v5, "inflater":Landroid/view/LayoutInflater;
    const v12, 0x7f03004d

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    const v13, 0x7f0e013f

    invoke-virtual {v11, v13}, Lorg/telegram/ui/Telehgram/cleaner/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    invoke-virtual {v5, v12, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 227
    .local v6, "layout":Landroid/view/View;
    const v11, 0x7f0e011c

    invoke-virtual {v6, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    .line 229
    .local v7, "text":Landroid/widget/TextView;
    const-string v11, "NoFilesToDisplay"

    const v12, 0x7f070770

    invoke-static {v11, v12}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    new-instance v8, Landroid/widget/Toast;

    iget-object v11, p0, Lorg/telegram/ui/Telehgram/cleaner/MainActivity$2;->this$0:Lorg/telegram/ui/Telehgram/cleaner/MainActivity;

    invoke-direct {v8, v11}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    .line 231
    .local v8, "toast":Landroid/widget/Toast;
    const/16 v11, 0x11

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-virtual {v8, v11, v12, v13}, Landroid/widget/Toast;->setGravity(III)V

    .line 232
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Landroid/widget/Toast;->setDuration(I)V

    .line 233
    invoke-virtual {v8, v6}, Landroid/widget/Toast;->setView(Landroid/view/View;)V

    .line 234
    invoke-virtual {v8}, Landroid/widget/Toast;->show()V

    goto :goto_9c
.end method

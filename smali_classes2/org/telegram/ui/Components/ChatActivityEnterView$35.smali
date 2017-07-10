.class Lorg/telegram/ui/Components/ChatActivityEnterView$35;
.super Ljava/lang/Object;
.source "ChatActivityEnterView.java"

# interfaces
.implements Lorg/telegram/ui/Components/EmojiView$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Components/ChatActivityEnterView;->createEmojiView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Components/ChatActivityEnterView;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Components/ChatActivityEnterView;

    .prologue
    .line 2642
    iput-object p1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackspace()Z
    .registers 5

    .prologue
    const/4 v0, 0x0

    .line 2644
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    if-nez v1, :cond_e

    .line 2648
    :goto_d
    return v0

    .line 2647
    :cond_e
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    new-instance v2, Landroid/view/KeyEvent;

    const/16 v3, 0x43

    invoke-direct {v2, v0, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/Components/EditTextCaption;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 2648
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public onClearEmojiRecent()V
    .registers 4

    .prologue
    .line 2798
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_10

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_11

    .line 2812
    :cond_10
    :goto_10
    return-void

    .line 2801
    :cond_11
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2802
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v1, "AppName"

    const v2, 0x7f070092

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2803
    const-string v1, "ClearRecentEmoji"

    const v2, 0x7f07017d

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2804
    const-string v1, "ClearButton"

    const v2, 0x7f070178

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Components/ChatActivityEnterView$35$3;

    invoke-direct {v2, p0}, Lorg/telegram/ui/Components/ChatActivityEnterView$35$3;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;)V

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2810
    const-string v1, "Cancel"

    const v2, 0x7f0700fe

    invoke-static {v1, v2}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2811
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_10
.end method

.method public onEmojiSelected(Ljava/lang/String;)V
    .registers 10
    .param p1, "symbol"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x0

    .line 2652
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextCaption;->getSelectionEnd()I

    move-result v1

    .line 2653
    .local v1, "i":I
    if-gez v1, :cond_e

    .line 2654
    const/4 v1, 0x0

    .line 2657
    :cond_e
    :try_start_e
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    const/4 v5, 0x2

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v4, v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 2658
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/ui/Components/EditTextCaption;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {v4}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v4

    const/high16 v5, 0x41a00000    # 20.0f

    invoke-static {v5}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v5

    const/4 v6, 0x0

    invoke-static {p1, v4, v5, v6}, Lorg/telegram/messenger/Emoji;->replaceEmoji(Ljava/lang/CharSequence;Landroid/graphics/Paint$FontMetricsInt;IZ)Ljava/lang/CharSequence;

    move-result-object v3

    .line 2659
    .local v3, "localCharSequence":Ljava/lang/CharSequence;
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v5}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v5

    invoke-virtual {v5}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-interface {v5, v1, v3}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2660
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v4

    add-int v2, v1, v4

    .line 2661
    .local v2, "j":I
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v4}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v4

    invoke-virtual {v4, v2, v2}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(II)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_53} :catch_59
    .catchall {:try_start_e .. :try_end_53} :catchall_63

    .line 2665
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    .line 2667
    .end local v2    # "j":I
    .end local v3    # "localCharSequence":Ljava/lang/CharSequence;
    :goto_58
    return-void

    .line 2662
    :catch_59
    move-exception v0

    .line 2663
    .local v0, "e":Ljava/lang/Exception;
    :try_start_5a
    invoke-static {v0}, Lorg/telegram/messenger/FileLog;->e(Ljava/lang/Throwable;)V
    :try_end_5d
    .catchall {:try_start_5a .. :try_end_5d} :catchall_63

    .line 2665
    iget-object v4, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v4, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    goto :goto_58

    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_63
    move-exception v4

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # setter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->innerTextChange:I
    invoke-static {v5, v7}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$3102(Lorg/telegram/ui/Components/ChatActivityEnterView;I)I

    throw v4
.end method

.method public onGifSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 16
    .param p1, "gif"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v11, 0x0

    const/high16 v12, 0x42480000    # 50.0f

    const/4 v13, 0x0

    .line 2724
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2725
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "preview_sticker"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2726
    .local v7, "previewSticker":Z
    if-eqz v7, :cond_cb

    .line 2727
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2728
    .local v4, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 2729
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v10, "webp"

    invoke-virtual {v4, v9, v13, v10, v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2731
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2732
    .local v3, "container":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2733
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2734
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2736
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2738
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2739
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    const-string v9, "AppName"

    const v10, 0x7f070092

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2740
    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setView(Landroid/view/View;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2741
    const-string v9, "OK"

    const v10, 0x7f0703d4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/ChatActivityEnterView$35$2;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$35$2;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v9, v10}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2753
    const-string v9, "Cancel"

    const v10, 0x7f0700fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v13}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2755
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->create()Lorg/telegram/ui/ActionBar/AlertDialog;

    move-result-object v8

    .line 2756
    .local v8, "visibleDialog":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2757
    const v9, 0x1020019

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2758
    .local v1, "button1":Landroid/widget/Button;
    const v9, 0x102001a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2759
    .local v2, "button2":Landroid/widget/Button;
    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2760
    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2762
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    if-eqz v9, :cond_ca

    .line 2763
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    invoke-interface {v9, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2774
    .end local v0    # "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    .end local v1    # "button1":Landroid/widget/Button;
    .end local v2    # "button2":Landroid/widget/Button;
    .end local v3    # "container":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "visibleDialog":Landroid/app/Dialog;
    :cond_ca
    :goto_ca
    return-void

    .line 2766
    :cond_cb
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    invoke-virtual {v9, p1, v10, v11, v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2767
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    long-to-int v9, v10

    if-nez v9, :cond_ee

    .line 2768
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v9

    invoke-virtual {v9, p1}, Lorg/telegram/messenger/MessagesController;->saveGif(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 2770
    :cond_ee
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    if-eqz v9, :cond_ca

    .line 2771
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    invoke-interface {v9, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto :goto_ca
.end method

.method public onGifTab(Z)V
    .registers 4
    .param p1, "opened"    # Z

    .prologue
    .line 2779
    sget-boolean v0, Lorg/telegram/messenger/AndroidUtilities;->usingHardwareInput:Z

    if-nez v0, :cond_30

    .line 2780
    if-eqz p1, :cond_31

    .line 2781
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v0

    if-nez v0, :cond_30

    .line 2782
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const-string v1, "@gif "

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    .line 2783
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v1

    invoke-virtual {v1}, Lorg/telegram/ui/Components/EditTextCaption;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setSelection(I)V

    .line 2789
    :cond_30
    :goto_30
    return-void

    .line 2785
    :cond_31
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/ui/Components/EditTextCaption;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "@gif "

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 2786
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->messageEditText:Lorg/telegram/ui/Components/EditTextCaption;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$100(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/EditTextCaption;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lorg/telegram/ui/Components/EditTextCaption;->setText(Ljava/lang/CharSequence;)V

    goto :goto_30
.end method

.method public onReorderFavorites(Z)V
    .registers 5
    .param p1, "sticker"    # Z

    .prologue
    .line 2879
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    if-eqz v1, :cond_23

    .line 2880
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2881
    .local v0, "bundle":Landroid/os/Bundle;
    if-eqz p1, :cond_15

    .line 2882
    const-string v1, "sticker"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 2884
    :cond_15
    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v1

    new-instance v2, Lorg/telegram/ui/Telehgram/FavEmojisActivity;

    invoke-direct {v2, v0}, Lorg/telegram/ui/Telehgram/FavEmojisActivity;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2886
    .end local v0    # "bundle":Landroid/os/Bundle;
    :cond_23
    return-void
.end method

.method public onShowStickerSet(Lorg/telegram/tgnet/TLRPC$StickerSet;Lorg/telegram/tgnet/TLRPC$InputStickerSet;)V
    .registers 10
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;
    .param p2, "inputStickerSet"    # Lorg/telegram/tgnet/TLRPC$InputStickerSet;

    .prologue
    .line 2856
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_11

    .line 2865
    :cond_10
    :goto_10
    return-void

    .line 2859
    :cond_11
    if-eqz p1, :cond_20

    .line 2860
    new-instance p2, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;

    .end local p2    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    invoke-direct {p2}, Lorg/telegram/tgnet/TLRPC$TL_inputStickerSetID;-><init>()V

    .line 2861
    .restart local p2    # "inputStickerSet":Lorg/telegram/tgnet/TLRPC$InputStickerSet;
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->access_hash:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->access_hash:J

    .line 2862
    iget-wide v0, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->id:J

    iput-wide v0, p2, Lorg/telegram/tgnet/TLRPC$InputStickerSet;->id:J

    .line 2864
    :cond_20
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v6

    new-instance v0, Lorg/telegram/ui/Components/StickersAlert;

    iget-object v1, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    const/4 v4, 0x0

    iget-object v5, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lorg/telegram/ui/Components/StickersAlert;-><init>(Landroid/content/Context;Lorg/telegram/ui/ActionBar/BaseFragment;Lorg/telegram/tgnet/TLRPC$InputStickerSet;Lorg/telegram/tgnet/TLRPC$TL_messages_stickerSet;Lorg/telegram/ui/Components/StickersAlert$StickersAlertDelegate;)V

    invoke-virtual {v6, v0}, Lorg/telegram/ui/ChatActivity;->showDialog(Landroid/app/Dialog;)Landroid/app/Dialog;

    goto :goto_10
.end method

.method public onStickerSelected(Lorg/telegram/tgnet/TLRPC$Document;)V
    .registers 16
    .param p1, "sticker"    # Lorg/telegram/tgnet/TLRPC$Document;

    .prologue
    const/4 v11, 0x0

    const/high16 v12, 0x42480000    # 50.0f

    const/4 v13, 0x0

    .line 2671
    sget-object v9, Lorg/telegram/messenger/ApplicationLoader;->applicationContext:Landroid/content/Context;

    const-string v10, "mainconfig"

    invoke-virtual {v9, v10, v11}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    .line 2672
    .local v6, "preferences":Landroid/content/SharedPreferences;
    const-string v9, "preview_sticker"

    invoke-interface {v6, v9, v11}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 2673
    .local v7, "previewSticker":Z
    if-eqz v7, :cond_cb

    .line 2674
    new-instance v4, Lorg/telegram/ui/Components/BackupImageView;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;-><init>(Landroid/content/Context;)V

    .line 2675
    .local v4, "imageView":Lorg/telegram/ui/Components/BackupImageView;
    const/4 v9, 0x1

    invoke-virtual {v4, v9}, Lorg/telegram/ui/Components/BackupImageView;->setAspectFit(Z)V

    .line 2676
    iget-object v9, p1, Lorg/telegram/tgnet/TLRPC$Document;->thumb:Lorg/telegram/tgnet/TLRPC$PhotoSize;

    iget-object v9, v9, Lorg/telegram/tgnet/TLRPC$PhotoSize;->location:Lorg/telegram/tgnet/TLRPC$FileLocation;

    const-string v10, "webp"

    invoke-virtual {v4, v9, v13, v10, v13}, Lorg/telegram/ui/Components/BackupImageView;->setImage(Lorg/telegram/tgnet/TLObject;Ljava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    .line 2678
    new-instance v3, Landroid/widget/FrameLayout;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v3, v9}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2679
    .local v3, "container":Landroid/widget/FrameLayout;
    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    invoke-direct {v5, v9, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 2680
    .local v5, "params":Landroid/widget/FrameLayout$LayoutParams;
    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v9

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v10

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v11

    invoke-static {v12}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v12

    invoke-virtual {v5, v9, v10, v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 2681
    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/BackupImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2682
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 2684
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v0, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2685
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v9, "AppName"

    const v10, 0x7f070092

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 2686
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 2687
    const-string v9, "OK"

    const v10, 0x7f0703d4

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;

    invoke-direct {v10, p0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$35$1;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;Lorg/telegram/tgnet/TLRPC$Document;)V

    invoke-virtual {v0, v9, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2693
    const-string v9, "Cancel"

    const v10, 0x7f0700fe

    invoke-static {v9, v10}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v0, v9, v13}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 2695
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    .line 2696
    .local v8, "visibleDialog":Landroid/app/Dialog;
    invoke-virtual {v8}, Landroid/app/Dialog;->show()V

    .line 2697
    const v9, 0x1020019

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 2698
    .local v1, "button1":Landroid/widget/Button;
    const v9, 0x102001a

    invoke-virtual {v8, v9}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    .line 2699
    .local v2, "button2":Landroid/widget/Button;
    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v1, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2700
    const-string v9, "fonts/rmedium.ttf"

    invoke-static {v9}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v9

    invoke-virtual {v2, v9}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 2702
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    if-eqz v9, :cond_ca

    .line 2703
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    invoke-interface {v9, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    .line 2711
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "button1":Landroid/widget/Button;
    .end local v2    # "button2":Landroid/widget/Button;
    .end local v3    # "container":Landroid/widget/FrameLayout;
    .end local v4    # "imageView":Lorg/telegram/ui/Components/BackupImageView;
    .end local v5    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v8    # "visibleDialog":Landroid/app/Dialog;
    :cond_ca
    :goto_ca
    return-void

    .line 2706
    :cond_cb
    invoke-static {}, Lorg/telegram/messenger/SendMessagesHelper;->getInstance()Lorg/telegram/messenger/SendMessagesHelper;

    move-result-object v9

    iget-object v10, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->dialog_id:J
    invoke-static {v10}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1000(Lorg/telegram/ui/Components/ChatActivityEnterView;)J

    move-result-wide v10

    iget-object v12, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->replyingMessageObject:Lorg/telegram/messenger/MessageObject;
    invoke-static {v12}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$1200(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/messenger/MessageObject;

    move-result-object v12

    invoke-virtual {v9, p1, v10, v11, v12}, Lorg/telegram/messenger/SendMessagesHelper;->sendSticker(Lorg/telegram/tgnet/TLRPC$Document;JLorg/telegram/messenger/MessageObject;)V

    .line 2707
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    if-eqz v9, :cond_ca

    .line 2708
    iget-object v9, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v9}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v9

    invoke-interface {v9, v13}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onMessageSend(Ljava/lang/CharSequence;)V

    goto :goto_ca
.end method

.method public onStickerSetAdd(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .registers 7
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    .line 2869
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    const/4 v2, 0x2

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2870
    return-void
.end method

.method public onStickerSetRemove(Lorg/telegram/tgnet/TLRPC$StickerSetCovered;)V
    .registers 6
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSetCovered;

    .prologue
    const/4 v3, 0x0

    .line 2874
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentActivity:Landroid/app/Activity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$600(Lorg/telegram/ui/Components/ChatActivityEnterView;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lorg/telegram/tgnet/TLRPC$StickerSetCovered;->set:Lorg/telegram/tgnet/TLRPC$StickerSet;

    iget-object v2, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v2}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v2

    invoke-static {v0, v1, v3, v2, v3}, Lorg/telegram/messenger/query/StickersQuery;->removeStickersSet(Landroid/content/Context;Lorg/telegram/tgnet/TLRPC$StickerSet;ILorg/telegram/ui/ActionBar/BaseFragment;Z)V

    .line 2875
    return-void
.end method

.method public onStickerSetShowOptions(Lorg/telegram/tgnet/TLRPC$StickerSet;)V
    .registers 9
    .param p1, "stickerSet"    # Lorg/telegram/tgnet/TLRPC$StickerSet;

    .prologue
    const v6, 0x7f070522

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 2818
    new-instance v0, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    iget-object v3, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    invoke-virtual {v3}, Lorg/telegram/ui/Components/ChatActivityEnterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 2819
    .local v0, "builder":Lorg/telegram/ui/ActionBar/AlertDialog$Builder;
    iget-object v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2820
    iget-boolean v3, p1, Lorg/telegram/tgnet/TLRPC$StickerSet;->official:Z

    if-eqz v3, :cond_33

    .line 2821
    new-array v2, v5, [I

    aput v4, v2, v4

    .line 2822
    .local v2, "options":[I
    new-array v1, v5, [Ljava/lang/CharSequence;

    const-string v3, "StickersHide"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    .line 2827
    .local v1, "items":[Ljava/lang/CharSequence;
    :goto_27
    new-instance v3, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;

    invoke-direct {v3, p0, v2, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$35$4;-><init>(Lorg/telegram/ui/Components/ChatActivityEnterView$35;[ILorg/telegram/tgnet/TLRPC$StickerSet;)V

    invoke-virtual {v0, v1, v3}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lorg/telegram/ui/ActionBar/AlertDialog$Builder;

    .line 2850
    invoke-virtual {v0}, Lorg/telegram/ui/ActionBar/AlertDialog$Builder;->show()Lorg/telegram/ui/ActionBar/AlertDialog;

    .line 2851
    return-void

    .line 2824
    .end local v1    # "items":[Ljava/lang/CharSequence;
    .end local v2    # "options":[I
    :cond_33
    const/4 v3, 0x4

    new-array v2, v3, [I

    fill-array-data v2, :array_5c

    .line 2825
    .restart local v2    # "options":[I
    const/4 v3, 0x3

    new-array v1, v3, [Ljava/lang/CharSequence;

    const-string v3, "StickersHide"

    invoke-static {v3, v6}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "StickersRemove"

    const v4, 0x7f070523

    invoke-static {v3, v4}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v5

    const/4 v3, 0x2

    const-string v4, "StickersCopy"

    const v5, 0x7f070521

    invoke-static {v4, v5}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    .restart local v1    # "items":[Ljava/lang/CharSequence;
    goto :goto_27

    .line 2824
    :array_5c
    .array-data 4
        0x0
        0x1
        0x2
        0x3
    .end array-data
.end method

.method public onStickersSettingsClick()V
    .registers 4

    .prologue
    .line 2716
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 2717
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->parentFragment:Lorg/telegram/ui/ChatActivity;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$900(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/ChatActivity;

    move-result-object v0

    new-instance v1, Lorg/telegram/ui/StickersActivity;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/telegram/ui/StickersActivity;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/telegram/ui/ChatActivity;->presentFragment(Lorg/telegram/ui/ActionBar/BaseFragment;)Z

    .line 2719
    :cond_17
    return-void
.end method

.method public onStickersTab(Z)V
    .registers 3
    .param p1, "opened"    # Z

    .prologue
    .line 2793
    iget-object v0, p0, Lorg/telegram/ui/Components/ChatActivityEnterView$35;->this$0:Lorg/telegram/ui/Components/ChatActivityEnterView;

    # getter for: Lorg/telegram/ui/Components/ChatActivityEnterView;->delegate:Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;
    invoke-static {v0}, Lorg/telegram/ui/Components/ChatActivityEnterView;->access$500(Lorg/telegram/ui/Components/ChatActivityEnterView;)Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/telegram/ui/Components/ChatActivityEnterView$ChatActivityEnterViewDelegate;->onStickersTab(Z)V

    .line 2794
    return-void
.end method

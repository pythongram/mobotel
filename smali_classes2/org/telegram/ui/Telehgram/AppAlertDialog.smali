.class public Lorg/telegram/ui/Telehgram/AppAlertDialog;
.super Lorg/telegram/ui/Membergram/dialog/BaseDialog;
.source "AppAlertDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mButton:Landroid/widget/Button;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lorg/telegram/ui/Membergram/dialog/BaseDialog;-><init>(Landroid/content/Context;)V

    .line 33
    const v0, 0x7f030020

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->setContentView(I)V

    .line 34
    invoke-direct {p0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->initView()V

    .line 35
    return-void
.end method

.method public static getInstance(Landroid/content/Context;I)Lorg/telegram/ui/Telehgram/AppAlertDialog;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resId"    # I

    .prologue
    .line 27
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/telegram/ui/Telehgram/AppAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;Ljava/lang/String;)Lorg/telegram/ui/Telehgram/AppAlertDialog;
    .registers 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/String;

    .prologue
    .line 21
    new-instance v0, Lorg/telegram/ui/Telehgram/AppAlertDialog;

    invoke-direct {v0, p0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;-><init>(Landroid/content/Context;)V

    .line 22
    .local v0, "instance":Lorg/telegram/ui/Telehgram/AppAlertDialog;
    invoke-virtual {v0, p1}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 23
    return-object v0
.end method

.method private initView()V
    .registers 3

    .prologue
    .line 43
    const v0, 0x7f0e00bc

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mTitle:Landroid/widget/TextView;

    .line 44
    const v0, 0x7f0e00bd

    invoke-virtual {p0, v0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    .line 45
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    const-string v1, "fonts/rmedium.ttf"

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTypeface(Landroid/graphics/Typeface;)V

    .line 46
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/telegram/ui/Telehgram/AppAlertDialog;->dismiss()V

    .line 62
    return-void
.end method

.method public setButton(ILandroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "resid"    # I
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 50
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(I)V

    .line 51
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-void
.end method

.method public setButton(Ljava/lang/String;Landroid/view/View$OnClickListener;)V
    .registers 4
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 55
    if-eqz p1, :cond_7

    .line 56
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 57
    :cond_7
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mButton:Landroid/widget/Button;

    invoke-virtual {v0, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .registers 3
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 39
    iget-object v0, p0, Lorg/telegram/ui/Telehgram/AppAlertDialog;->mTitle:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 40
    return-void
.end method

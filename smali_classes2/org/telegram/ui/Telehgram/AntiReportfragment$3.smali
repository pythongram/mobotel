.class Lorg/telegram/ui/Telehgram/AntiReportfragment$3;
.super Ljava/lang/Object;
.source "AntiReportfragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/AntiReportfragment;->createView(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/AntiReportfragment;)V
    .registers 2
    .param p1, "this$0"    # Lorg/telegram/ui/Telehgram/AntiReportfragment;

    .prologue
    .line 176
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 179
    new-instance v3, Landroid/app/Dialog;

    iget-object v7, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v7}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v7

    invoke-direct {v3, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 180
    .local v3, "dialog":Landroid/app/Dialog;
    const/4 v7, 0x1

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 181
    const v7, 0x7f030021

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->setContentView(I)V

    .line 183
    const v7, 0x7f0e00b9

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 184
    .local v1, "copy":Landroid/widget/TextView;
    const v7, 0x7f0e00c2

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 185
    .local v5, "retry":Landroid/widget/TextView;
    const v7, 0x7f0e00bf

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 186
    .local v6, "retry2":Landroid/widget/TextView;
    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 187
    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 188
    const-string v7, "fonts/rmedium.ttf"

    invoke-static {v7}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 189
    const v7, 0x7f0e00c1

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 190
    .local v4, "find":Landroid/view/View;
    const v7, 0x7f0e00c0

    invoke-virtual {v3, v7}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 191
    .local v2, "copyView":Landroid/view/View;
    invoke-virtual {v3}, Landroid/app/Dialog;->show()V

    .line 192
    const-string v0, "Dear Telegram Support, \nMy Telegram account has been spammed suddenly and I cannot send message to any contacts whom I don\'t have their number, if I am the chat starter.\nKindly help to fix the issue and remove the spam report.\nBest Regards."

    .line 194
    .local v0, "Body":Ljava/lang/String;
    new-instance v7, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;

    invoke-direct {v7, p0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$3;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    new-instance v7, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;

    invoke-direct {v7, p0, v3}, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$2;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$3;Landroid/app/Dialog;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    return-void
.end method

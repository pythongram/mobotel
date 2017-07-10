.class Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;
.super Ljava/lang/Object;
.source "AntiReportfragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$3;)V
    .registers 2
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    .prologue
    .line 194
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 197
    iget-object v2, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    iget-object v3, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    iget-object v3, v3, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v3}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "Dear Telegram Support, \nMy Telegram account has been spammed suddenly and I cannot send message to any contacts whom I don\'t have their number, if I am the chat starter.\nKindly help to fix the issue and remove the spam report.\nBest Regards."

    invoke-virtual {v2, v3, v4}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->copyToClipboard(Landroid/content/Context;Ljava/lang/String;)Z

    .line 198
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$3;

    iget-object v2, v2, Lorg/telegram/ui/Telehgram/AntiReportfragment$3;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v2}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const-string v2, "AppName"

    const v3, 0x7f070092

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 200
    const-string v2, "\u0645\u062a\u0646 \u0622\u0645\u0627\u062f\u0647 \u062f\u0631 \u06af\u0648\u0634\u06cc \u0634\u0645\u0627 \u06a9\u067e\u06cc \u0634\u062f\u060c \u06a9\u0627\u0641\u06cc\u0633\u062a \u0628\u0647 \u0631\u0628\u0627\u062a \u062a\u0644\u06af\u0631\u0627\u0645 \u0628\u0631\u0648\u06cc\u062f \u0648 \u062f\u0631 \u0645\u0631\u062d\u0644\u0647 \u0627\u06cc \u06a9\u0647 \u0627\u0632 \u0634\u0645\u0627 \u062f\u0644\u06cc\u0644 \u0631\u06cc\u067e\u0648\u0631\u062a \u0631\u0627 \u0645\u06cc\u067e\u0631\u0633\u062f\u060c \u0627\u06cc\u0646 \u0645\u062a\u0646 \u0631\u0627 \u062c\u0627\u06cc \u06af\u0630\u0627\u0631\u06cc \u06cc\u0627 paste \u0646\u0645\u0627\u06cc\u06cc\u062f."

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 201
    const-string v2, "OK"

    const v3, 0x7f0703d4

    invoke-static {v2, v3}, Lorg/telegram/messenger/LocaleController;->getString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1$1;

    invoke-direct {v3, p0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1$1;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$3$1;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 207
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 208
    .local v1, "visibleDialog":Landroid/app/Dialog;
    invoke-virtual {v1}, Landroid/app/Dialog;->show()V

    .line 209
    return-void
.end method

.class Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;
.super Ljava/lang/Object;
.source "AntiReportfragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/telegram/ui/Telehgram/AntiReportfragment$4;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

.field final synthetic val$dialog:Landroid/app/Dialog;

.field final synthetic val$num_field:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$4;Landroid/widget/EditText;Landroid/app/Dialog;)V
    .registers 4
    .param p1, "this$1"    # Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

    .prologue
    .line 242
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

    iput-object p2, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    iput-object p3, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$dialog:Landroid/app/Dialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 10
    .param p1, "arg0"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    .line 247
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-le v4, v7, :cond_d3

    .line 251
    :try_start_15
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_b1

    .line 252
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 257
    .local v3, "str":Ljava/lang/String;
    :goto_50
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Dear Telegram Support,\nMy Telegram account has been spammed suddenly and I cannot send message to any contacts whom I don\'t have their number, when I\'m the chat starter.\nWhen I send the message to these kind of people, it is showing a clock and nothing will be delivered.\nIt shows a message: Sorry, you can send messages to mutual contacts at the moment.\nMy phone number: +98"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\nKindly help to fix the issue and remove the spam report. \nBest Regards"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 259
    .local v0, "Body":Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.SENDTO"

    invoke-direct {v2, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 260
    .local v2, "intent":Landroid/content/Intent;
    const-string v4, "text/plain"

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 261
    const-string v4, "android.intent.extra.SUBJECT"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "spam +98"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v4, "android.intent.extra.TEXT"

    invoke-virtual {v2, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 263
    const-string v4, "mailto:spam@telegram.org"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 264
    const/high16 v4, 0x10000000

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 265
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 266
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$dialog:Landroid/app/Dialog;

    invoke-virtual {v4}, Landroid/app/Dialog;->dismiss()V

    .line 275
    .end local v0    # "Body":Ljava/lang/String;
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "str":Ljava/lang/String;
    :goto_b0
    return-void

    .line 255
    :cond_b1
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_be
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_be} :catch_c0

    move-result-object v3

    .restart local v3    # "str":Ljava/lang/String;
    goto :goto_50

    .line 268
    .end local v3    # "str":Ljava/lang/String;
    :catch_c0
    move-exception v1

    .line 270
    .local v1, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->this$1:Lorg/telegram/ui/Telehgram/AntiReportfragment$4;

    iget-object v4, v4, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v4}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v4

    const-string v5, "\u0628\u0647 \u0646\u0638\u0631 \u0645\u06cc\u0631\u0633\u062f \u0627\u06a9\u0627\u0646\u062a \u0641\u0639\u0627\u0644 \u0627\u06cc\u0645\u06cc\u0644 \u0646\u062f\u0627\u0631\u06cc\u062f"

    invoke-static {v4, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_b0

    .line 273
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_d3
    iget-object v4, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;->val$num_field:Landroid/widget/EditText;

    const-string v5, "\u0634\u0645\u0627\u0631\u0647 \u0631\u0627 \u0648\u0627\u0631\u062f \u0646\u06a9\u0631\u062f\u0647 \u0627\u06cc\u062f."

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    goto :goto_b0
.end method

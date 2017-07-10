.class public Lorg/telegram/ui/Components/URLSpanUserMention;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "URLSpanUserMention.java"


# instance fields
.field private isOut:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isOutOwner"    # Z

    .prologue
    .line 20
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 21
    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanUserMention;->isOut:Z

    .line 22
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 26
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->updateDrawState(Landroid/text/TextPaint;)V

    .line 27
    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanUserMention;->isOut:Z

    if-eqz v0, :cond_15

    .line 28
    const-string v0, "chat_messageLinkOut"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 33
    :goto_10
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 34
    return-void

    .line 30
    :cond_15
    const-string v0, "chat_messageLinkIn"

    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_10
.end method

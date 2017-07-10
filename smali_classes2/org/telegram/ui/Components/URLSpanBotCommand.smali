.class public Lorg/telegram/ui/Components/URLSpanBotCommand;
.super Lorg/telegram/ui/Components/URLSpanNoUnderline;
.source "URLSpanBotCommand.java"


# static fields
.field public static enabled:Z


# instance fields
.field public isOut:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 17
    const/4 v0, 0x1

    sput-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "isOutOwner"    # Z

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;-><init>(Ljava/lang/String;)V

    .line 22
    iput-boolean p2, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    .line 23
    return-void
.end method


# virtual methods
.method public updateDrawState(Landroid/text/TextPaint;)V
    .registers 3
    .param p1, "ds"    # Landroid/text/TextPaint;

    .prologue
    .line 27
    invoke-super {p0, p1}, Lorg/telegram/ui/Components/URLSpanNoUnderline;->updateDrawState(Landroid/text/TextPaint;)V

    .line 28
    iget-boolean v0, p0, Lorg/telegram/ui/Components/URLSpanBotCommand;->isOut:Z

    if-eqz v0, :cond_1c

    .line 29
    sget-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v0, :cond_19

    const-string v0, "chat_messageLinkOut"

    :goto_d
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 33
    :goto_14
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setUnderlineText(Z)V

    .line 34
    return-void

    .line 29
    :cond_19
    const-string v0, "chat_messageTextOut"

    goto :goto_d

    .line 31
    :cond_1c
    sget-boolean v0, Lorg/telegram/ui/Components/URLSpanBotCommand;->enabled:Z

    if-eqz v0, :cond_2a

    const-string v0, "chat_messageLinkIn"

    :goto_22
    invoke-static {v0}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setColor(I)V

    goto :goto_14

    :cond_2a
    const-string v0, "chat_messageTextIn"

    goto :goto_22
.end method

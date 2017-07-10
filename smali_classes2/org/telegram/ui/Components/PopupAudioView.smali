.class public Lorg/telegram/ui/Components/PopupAudioView;
.super Lorg/telegram/ui/Cells/BaseCell;
.source "PopupAudioView.java"

# interfaces
.implements Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;
.implements Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;


# instance fields
.field private TAG:I

.field private buttonPressed:I

.field private buttonState:I

.field private buttonX:I

.field private buttonY:I

.field protected currentMessageObject:Lorg/telegram/messenger/MessageObject;

.field private lastTimeString:Ljava/lang/String;

.field private progressView:Lorg/telegram/ui/Components/ProgressView;

.field private seekBar:Lorg/telegram/ui/Components/SeekBar;

.field private seekBarX:I

.field private seekBarY:I

.field private timeLayout:Landroid/text/StaticLayout;

.field private timePaint:Landroid/text/TextPaint;

.field timeWidth:I

.field private timeX:I

.field private wasLayout:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;-><init>(Landroid/content/Context;)V

    .line 34
    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    .line 44
    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 47
    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 51
    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    .line 58
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    .line 59
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 61
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/telegram/messenger/MediaController;->generateObserverTag()I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    .line 63
    new-instance v0, Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/telegram/ui/Components/SeekBar;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    .line 64
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p0}, Lorg/telegram/ui/Components/SeekBar;->setDelegate(Lorg/telegram/ui/Components/SeekBar$SeekBarDelegate;)V

    .line 65
    new-instance v0, Lorg/telegram/ui/Components/ProgressView;

    invoke-direct {v0}, Lorg/telegram/ui/Components/ProgressView;-><init>()V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    .line 66
    return-void
.end method

.method private didPressedButton()V
    .registers 7

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 207
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-nez v1, :cond_41

    .line 208
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->playAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 209
    .local v0, "result":Z
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isOut()Z

    move-result v1

    if-nez v1, :cond_39

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->isContentUnread()Z

    move-result v1

    if-eqz v1, :cond_39

    .line 210
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v1, v1, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    iget-object v1, v1, Lorg/telegram/tgnet/TLRPC$Message;->to_id:Lorg/telegram/tgnet/TLRPC$Peer;

    iget v1, v1, Lorg/telegram/tgnet/TLRPC$Peer;->channel_id:I

    if-nez v1, :cond_39

    .line 211
    invoke-static {}, Lorg/telegram/messenger/MessagesController;->getInstance()Lorg/telegram/messenger/MessagesController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MessagesController;->markMessageContentAsRead(Lorg/telegram/messenger/MessageObject;)V

    .line 212
    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->setContentIsRead()V

    .line 215
    :cond_39
    if-eqz v0, :cond_40

    .line 216
    iput v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 217
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 234
    .end local v0    # "result":Z
    :cond_40
    :goto_40
    return-void

    .line 219
    :cond_41
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v1, v3, :cond_57

    .line 220
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/MediaController;->pauseAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    .line 221
    .restart local v0    # "result":Z
    if-eqz v0, :cond_40

    .line 222
    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 223
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_40

    .line 225
    .end local v0    # "result":Z
    :cond_57
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-ne v1, v5, :cond_6f

    .line 226
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2, v3, v4}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 227
    const/4 v1, 0x4

    iput v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 228
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_40

    .line 229
    :cond_6f
    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_40

    .line 230
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v1

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v2}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/telegram/messenger/FileLoader;->cancelLoadFile(Lorg/telegram/tgnet/TLRPC$Document;)V

    .line 231
    iput v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 232
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_40
.end method


# virtual methods
.method public downloadAudioIfNeed()V
    .registers 5

    .prologue
    .line 266
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1a

    .line 267
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v1}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/messenger/FileLoader;->loadFile(Lorg/telegram/tgnet/TLRPC$Document;ZZ)V

    .line 268
    const/4 v0, 0x3

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 269
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 271
    :cond_1a
    return-void
.end method

.method public final getMessageObject()Lorg/telegram/messenger/MessageObject;
    .registers 2

    .prologue
    .line 82
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    return-object v0
.end method

.method public getObserverTag()I
    .registers 2

    .prologue
    .line 329
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->TAG:I

    return v0
.end method

.method protected onDetachedFromWindow()V
    .registers 2

    .prologue
    .line 160
    invoke-super {p0}, Lorg/telegram/ui/Cells/BaseCell;->onDetachedFromWindow()V

    .line 161
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 162
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 117
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_6

    .line 156
    :cond_5
    :goto_5
    return-void

    .line 121
    :cond_6
    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_e

    .line 122
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    goto :goto_5

    .line 126
    :cond_e
    sget-object v1, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v4

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredHeight()I

    move-result v5

    move-object v0, p0

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;IIII)V

    .line 127
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_msgInMediaDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 129
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eqz v0, :cond_5

    .line 133
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 134
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    if-eqz v0, :cond_32

    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_93

    .line 135
    :cond_32
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 136
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/SeekBar;->draw(Landroid/graphics/Canvas;)V

    .line 141
    :goto_40
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 143
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    add-int/lit8 v8, v0, 0x5

    .line 144
    .local v8, "state":I
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    const v1, -0x5e554d

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 145
    sget-object v0, Lorg/telegram/ui/ActionBar/Theme;->chat_fileStatesDrawable:[[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v8

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    aget-object v6, v0, v1

    .line 146
    .local v6, "buttonDrawable":Landroid/graphics/drawable/Drawable;
    const/high16 v0, 0x42100000    # 36.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v7

    .line 147
    .local v7, "side":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v9, v0, 0x2

    .line 148
    .local v9, "x":I
    invoke-virtual {v6}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    sub-int v0, v7, v0

    div-int/lit8 v10, v0, 0x2

    .line 149
    .local v10, "y":I
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v0, v9

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v1, v10

    invoke-virtual {p0, v6, v0, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setDrawableBounds(Landroid/graphics/drawable/Drawable;II)V

    .line 150
    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 152
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 153
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    int-to-float v0, v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 154
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    invoke-virtual {v0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 155
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_5

    .line 138
    .end local v6    # "buttonDrawable":Landroid/graphics/drawable/Drawable;
    .end local v7    # "side":I
    .end local v8    # "state":I
    .end local v9    # "x":I
    .end local v10    # "y":I
    :cond_93
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    add-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 139
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p1}, Lorg/telegram/ui/Components/ProgressView;->draw(Landroid/graphics/Canvas;)V

    goto :goto_40
.end method

.method public onFailedDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 305
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 306
    return-void
.end method

.method protected onLayout(ZIIII)V
    .registers 11
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    const/high16 v4, 0x41f00000    # 30.0f

    const/high16 v3, 0x41200000    # 10.0f

    .line 93
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_c

    .line 94
    invoke-super/range {p0 .. p5}, Lorg/telegram/ui/Cells/BaseCell;->onLayout(ZIIII)V

    .line 113
    :cond_b
    :goto_b
    return-void

    .line 98
    :cond_c
    const/high16 v0, 0x42580000    # 54.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    .line 99
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    .line 100
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v0, v1

    const/high16 v1, 0x41800000    # 16.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeX:I

    .line 102
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x428c0000    # 70.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/SeekBar;->setSize(II)V

    .line 103
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getMeasuredWidth()I

    move-result v1

    const/high16 v2, 0x42bc0000    # 94.0f

    invoke-static {v2}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sub-int/2addr v1, v2

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->width:I

    .line 104
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    iput v1, v0, Lorg/telegram/ui/Components/ProgressView;->height:I

    .line 105
    const/high16 v0, 0x41500000    # 13.0f

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    .line 106
    invoke-static {v3}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v0

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    .line 108
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    .line 110
    if-nez p1, :cond_72

    iget-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    if-nez v0, :cond_b

    .line 111
    :cond_72
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    goto :goto_b
.end method

.method protected onMeasure(II)V
    .registers 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 88
    .local v0, "width":I
    const/high16 v1, 0x42600000    # 56.0f

    invoke-static {v1}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lorg/telegram/ui/Components/PopupAudioView;->setMeasuredDimension(II)V

    .line 89
    return-void
.end method

.method public onProgressDownload(Ljava/lang/String;F)V
    .registers 5
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F

    .prologue
    .line 315
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v0, p2}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    .line 316
    iget v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_d

    .line 317
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 319
    :cond_d
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 320
    return-void
.end method

.method public onProgressUpload(Ljava/lang/String;FZ)V
    .registers 4
    .param p1, "fileName"    # Ljava/lang/String;
    .param p2, "progress"    # F
    .param p3, "isEncrypted"    # Z

    .prologue
    .line 325
    return-void
.end method

.method public onSeekBarDrag(F)V
    .registers 4
    .param p1, "progress"    # F

    .prologue
    .line 334
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_5

    .line 339
    :goto_4
    return-void

    .line 337
    :cond_5
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iput p1, v0, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    .line 338
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v1, p1}, Lorg/telegram/messenger/MediaController;->seekToProgress(Lorg/telegram/messenger/MessageObject;F)Z

    goto :goto_4
.end method

.method public onSuccessDownload(Ljava/lang/String;)V
    .registers 2
    .param p1, "fileName"    # Ljava/lang/String;

    .prologue
    .line 310
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 311
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 13
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 166
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 167
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 168
    .local v3, "y":F
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    iget v7, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarX:I

    int-to-float v7, v7

    sub-float/2addr v6, v7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v7

    iget v8, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBarY:I

    int-to-float v8, v8

    sub-float/2addr v7, v8

    invoke-virtual {v4, v5, v6, v7}, Lorg/telegram/ui/Components/SeekBar;->onTouch(IFF)Z

    move-result v0

    .line 169
    .local v0, "result":Z
    if-eqz v0, :cond_37

    .line 170
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_33

    .line 171
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    invoke-interface {v4, v10}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 173
    :cond_33
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 203
    :cond_36
    :goto_36
    return v0

    .line 175
    :cond_37
    const/high16 v4, 0x42100000    # 36.0f

    invoke-static {v4}, Lorg/telegram/messenger/AndroidUtilities;->dp(F)I

    move-result v1

    .line 176
    .local v1, "side":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_6e

    .line 177
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_67

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_67

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_67

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_67

    .line 178
    iput v10, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 179
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    .line 180
    const/4 v0, 0x1

    .line 198
    :cond_67
    :goto_67
    if-nez v0, :cond_36

    .line 199
    invoke-super {p0, p1}, Lorg/telegram/ui/Cells/BaseCell;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_36

    .line 182
    :cond_6e
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    if-ne v4, v10, :cond_67

    .line 183
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v4, v10, :cond_84

    .line 184
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 185
    invoke-virtual {p0, v9}, Lorg/telegram/ui/Components/PopupAudioView;->playSoundEffect(I)V

    .line 186
    invoke-direct {p0}, Lorg/telegram/ui/Components/PopupAudioView;->didPressedButton()V

    .line 187
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_67

    .line 188
    :cond_84
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_91

    .line 189
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 190
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_67

    .line 191
    :cond_91
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_67

    .line 192
    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    int-to-float v4, v4

    cmpl-float v4, v2, v4

    if-ltz v4, :cond_b6

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonX:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_b6

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    int-to-float v4, v4

    cmpl-float v4, v3, v4

    if-ltz v4, :cond_b6

    iget v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonY:I

    add-int/2addr v4, v1

    int-to-float v4, v4

    cmpg-float v4, v3, v4

    if-lez v4, :cond_67

    .line 193
    :cond_b6
    iput v9, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonPressed:I

    .line 194
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto :goto_67
.end method

.method public setMessageObject(Lorg/telegram/messenger/MessageObject;)V
    .registers 6
    .param p1, "messageObject"    # Lorg/telegram/messenger/MessageObject;

    .prologue
    .line 69
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-eq v0, p1, :cond_2e

    .line 70
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    const-string v1, "chat_inAudioSeekbar"

    invoke-static {v1}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v1

    const-string v2, "chat_inAudioSeekbarFill"

    invoke-static {v2}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v2

    const-string v3, "chat_inAudioSeekbarSelected"

    invoke-static {v3}, Lorg/telegram/ui/ActionBar/Theme;->getColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Lorg/telegram/ui/Components/SeekBar;->setColors(III)V

    .line 71
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    const v1, -0x261d15

    const v2, -0x793a08

    invoke-virtual {v0, v1, v2}, Lorg/telegram/ui/Components/ProgressView;->setProgressColors(II)V

    .line 73
    iput-object p1, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->wasLayout:Z

    .line 76
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->requestLayout()V

    .line 78
    :cond_2e
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateButtonState()V

    .line 79
    return-void
.end method

.method public updateButtonState()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    .line 274
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4}, Lorg/telegram/messenger/MessageObject;->getFileName()Ljava/lang/String;

    move-result-object v1

    .line 275
    .local v1, "fileName":Ljava/lang/String;
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget-object v4, v4, Lorg/telegram/messenger/MessageObject;->messageOwner:Lorg/telegram/tgnet/TLRPC$Message;

    invoke-static {v4}, Lorg/telegram/messenger/FileLoader;->getPathToMessage(Lorg/telegram/tgnet/TLRPC$Message;)Ljava/io/File;

    move-result-object v0

    .line 276
    .local v0, "cacheFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_44

    .line 277
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lorg/telegram/messenger/MediaController;->removeLoadingFileObserver(Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 278
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    iget-object v5, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v4, v5}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v2

    .line 279
    .local v2, "playing":Z
    if-eqz v2, :cond_34

    if-eqz v2, :cond_40

    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4}, Lorg/telegram/messenger/MediaController;->isAudioPaused()Z

    move-result v4

    if-eqz v4, :cond_40

    .line 280
    :cond_34
    const/4 v4, 0x0

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 284
    :goto_37
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    .line 300
    .end local v2    # "playing":Z
    :goto_3c
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->updateProgress()V

    .line 301
    return-void

    .line 282
    .restart local v2    # "playing":Z
    :cond_40
    const/4 v4, 0x1

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    goto :goto_37

    .line 286
    .end local v2    # "playing":Z
    :cond_44
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v4

    invoke-virtual {v4, v1, p0}, Lorg/telegram/messenger/MediaController;->addLoadingFileObserver(Ljava/lang/String;Lorg/telegram/messenger/MediaController$FileDownloadProgressListener;)V

    .line 287
    invoke-static {}, Lorg/telegram/messenger/FileLoader;->getInstance()Lorg/telegram/messenger/FileLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/FileLoader;->isLoadingFile(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_5e

    .line 288
    const/4 v4, 0x2

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 289
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_3c

    .line 291
    :cond_5e
    const/4 v4, 0x3

    iput v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->buttonState:I

    .line 292
    invoke-static {}, Lorg/telegram/messenger/ImageLoader;->getInstance()Lorg/telegram/messenger/ImageLoader;

    move-result-object v4

    invoke-virtual {v4, v1}, Lorg/telegram/messenger/ImageLoader;->getFileProgress(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v3

    .line 293
    .local v3, "progress":Ljava/lang/Float;
    if-eqz v3, :cond_75

    .line 294
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_3c

    .line 296
    :cond_75
    iget-object v4, p0, Lorg/telegram/ui/Components/PopupAudioView;->progressView:Lorg/telegram/ui/Components/ProgressView;

    invoke-virtual {v4, v6}, Lorg/telegram/ui/Components/ProgressView;->setProgress(F)V

    goto :goto_3c
.end method

.method public updateProgress()V
    .registers 12

    .prologue
    const/4 v7, 0x0

    .line 237
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    if-nez v0, :cond_6

    .line 263
    :goto_5
    return-void

    .line 241
    :cond_6
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    invoke-virtual {v0}, Lorg/telegram/ui/Components/SeekBar;->isDragging()Z

    move-result v0

    if-nez v0, :cond_17

    .line 242
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->seekBar:Lorg/telegram/ui/Components/SeekBar;

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v2, v2, Lorg/telegram/messenger/MessageObject;->audioProgress:F

    invoke-virtual {v0, v2}, Lorg/telegram/ui/Components/SeekBar;->setProgress(F)V

    .line 245
    :cond_17
    const/4 v10, 0x0

    .line 246
    .local v10, "duration":I
    invoke-static {}, Lorg/telegram/messenger/MediaController;->getInstance()Lorg/telegram/messenger/MediaController;

    move-result-object v0

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0, v2}, Lorg/telegram/messenger/MediaController;->isPlayingAudio(Lorg/telegram/messenger/MessageObject;)Z

    move-result v0

    if-nez v0, :cond_97

    .line 247
    const/4 v8, 0x0

    .local v8, "a":I
    :goto_25
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_47

    .line 248
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    invoke-virtual {v0}, Lorg/telegram/messenger/MessageObject;->getDocument()Lorg/telegram/tgnet/TLRPC$Document;

    move-result-object v0

    iget-object v0, v0, Lorg/telegram/tgnet/TLRPC$Document;->attributes:Ljava/util/ArrayList;

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;

    .line 249
    .local v9, "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    instance-of v0, v9, Lorg/telegram/tgnet/TLRPC$TL_documentAttributeAudio;

    if-eqz v0, :cond_94

    .line 250
    iget v10, v9, Lorg/telegram/tgnet/TLRPC$DocumentAttribute;->duration:I

    .line 257
    .end local v8    # "a":I
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_47
    :goto_47
    const-string v0, "%02d:%02d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    div-int/lit8 v3, v10, 0x3c

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v7

    const/4 v3, 0x1

    rem-int/lit8 v4, v10, 0x3c

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 258
    .local v1, "timeString":Ljava/lang/String;
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_71

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    if-eqz v0, :cond_8f

    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->lastTimeString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8f

    .line 259
    :cond_71
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v0, v2

    iput v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    .line 260
    new-instance v0, Landroid/text/StaticLayout;

    iget-object v2, p0, Lorg/telegram/ui/Components/PopupAudioView;->timePaint:Landroid/text/TextPaint;

    iget v3, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeWidth:I

    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    iput-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->timeLayout:Landroid/text/StaticLayout;

    .line 262
    :cond_8f
    invoke-virtual {p0}, Lorg/telegram/ui/Components/PopupAudioView;->invalidate()V

    goto/16 :goto_5

    .line 247
    .end local v1    # "timeString":Ljava/lang/String;
    .restart local v8    # "a":I
    .restart local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_94
    add-int/lit8 v8, v8, 0x1

    goto :goto_25

    .line 255
    .end local v8    # "a":I
    .end local v9    # "attribute":Lorg/telegram/tgnet/TLRPC$DocumentAttribute;
    :cond_97
    iget-object v0, p0, Lorg/telegram/ui/Components/PopupAudioView;->currentMessageObject:Lorg/telegram/messenger/MessageObject;

    iget v10, v0, Lorg/telegram/messenger/MessageObject;->audioProgressSec:I

    goto :goto_47
.end method

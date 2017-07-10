.class Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;
.super Landroid/widget/TextView;
.source "CopyTextAlert.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/telegram/ui/Telehgram/CopyTextAlert;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CustomTextView"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;


# direct methods
.method public constructor <init>(Lorg/telegram/ui/Telehgram/CopyTextAlert;Landroid/content/Context;)V
    .registers 3
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 164
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/CopyTextAlert$CustomTextView;->this$0:Lorg/telegram/ui/Telehgram/CopyTextAlert;

    .line 165
    invoke-direct {p0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 166
    return-void
.end method


# virtual methods
.method public setTypeface(Landroid/graphics/Typeface;)V
    .registers 3
    .param p1, "tf"    # Landroid/graphics/Typeface;

    .prologue
    .line 170
    const-string v0, "fonts/rmedium.ttf"

    invoke-static {v0}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 171
    return-void
.end method

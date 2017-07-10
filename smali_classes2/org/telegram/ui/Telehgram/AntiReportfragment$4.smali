.class Lorg/telegram/ui/Telehgram/AntiReportfragment$4;
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
    .line 225
    iput-object p1, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 228
    new-instance v0, Landroid/app/Dialog;

    iget-object v6, p0, Lorg/telegram/ui/Telehgram/AntiReportfragment$4;->this$0:Lorg/telegram/ui/Telehgram/AntiReportfragment;

    invoke-virtual {v6}, Lorg/telegram/ui/Telehgram/AntiReportfragment;->getParentActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v0, v6}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 229
    .local v0, "dialog":Landroid/app/Dialog;
    const/4 v6, 0x1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->requestWindowFeature(I)Z

    .line 230
    const v6, 0x7f030023

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->setContentView(I)V

    .line 232
    const v6, 0x7f0e00c2

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 233
    .local v3, "retry":Landroid/widget/TextView;
    const v6, 0x7f0e00bf

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 234
    .local v4, "retry2":Landroid/widget/TextView;
    const v6, 0x7f0e00ca

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 235
    .local v5, "retry3":Landroid/widget/TextView;
    const v6, 0x7f0e00cb

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 236
    .local v2, "num_field":Landroid/widget/EditText;
    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 237
    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 238
    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 239
    const-string v6, "fonts/rmedium.ttf"

    invoke-static {v6}, Lorg/telegram/messenger/AndroidUtilities;->getTypeface(Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/widget/EditText;->setTypeface(Landroid/graphics/Typeface;)V

    .line 240
    const v6, 0x7f0e00c1

    invoke-virtual {v0, v6}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 241
    .local v1, "find":Landroid/view/View;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 242
    new-instance v6, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;

    invoke-direct {v6, p0, v2, v0}, Lorg/telegram/ui/Telehgram/AntiReportfragment$4$1;-><init>(Lorg/telegram/ui/Telehgram/AntiReportfragment$4;Landroid/widget/EditText;Landroid/app/Dialog;)V

    invoke-virtual {v1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    return-void
.end method

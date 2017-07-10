.class public Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
.super Landroid/widget/FrameLayout;
.source "RadialPickerLayout.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    }
.end annotation


# static fields
.field private static final AM:I = 0x0

.field private static final HOUR_INDEX:I = 0x0

.field private static final HOUR_VALUE_TO_DEGREES_STEP_SIZE:I = 0x1e

.field private static final MINUTE_INDEX:I = 0x1

.field private static final MINUTE_VALUE_TO_DEGREES_STEP_SIZE:I = 0x6

.field private static final PM:I = 0x1

.field private static final SECOND_INDEX:I = 0x2

.field private static final SECOND_VALUE_TO_DEGREES_STEP_SIZE:I = 0x6

.field private static final TAG:Ljava/lang/String; = "RadialPickerLayout"

.field private static final VISIBLE_DEGREES_STEP_SIZE:I = 0x1e


# instance fields
.field private final TAP_TIMEOUT:I

.field private final TOUCH_SLOP:I

.field private mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field private mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

.field private mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

.field private mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

.field private mCurrentItemShowing:I

.field private mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mDoingMove:Z

.field private mDoingTouch:Z

.field private mDownDegrees:I

.field private mDownX:F

.field private mDownY:F

.field private mGrayBox:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

.field private mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

.field private mInputEnabled:Z

.field private mIs24HourMode:Z

.field private mIsTouchingAmOrPm:I

.field private mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

.field private mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

.field private mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

.field private mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

.field private mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

.field private mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

.field private mSnapPrefer30sMap:[I

.field private mTimeInitialized:Z

.field private mTransition:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 88
    iput v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 97
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    .line 108
    invoke-virtual {p0, p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 110
    .local v0, "vc":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    .line 111
    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    iput v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    .line 112
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 114
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    .line 115
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 117
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    .line 118
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 120
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 121
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 122
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 123
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 124
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    .line 125
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 127
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    .line 128
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 129
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    .line 130
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 131
    new-instance v1, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-direct {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    .line 132
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 135
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->preparePrefer30sMap()V

    .line 137
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 139
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 141
    new-instance v1, Landroid/view/View;

    invoke-direct {v1, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    .line 142
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    new-instance v2, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    sget v2, Lcom/wdullaer/materialdatetimepicker/R$color;->mdtp_transparent_black:I

    invoke-static {p1, v2}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 145
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 146
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->addView(Landroid/view/View;)V

    .line 148
    const-string v1, "accessibility"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    iput-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 150
    iput-boolean v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    .line 151
    return-void
.end method

.method static synthetic access$000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V
    .registers 4
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "x2"    # Z
    .param p3, "x3"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    return-void
.end method

.method static synthetic access$1100(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Z
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    return v0
.end method

.method static synthetic access$400(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    return-object v0
.end method

.method static synthetic access$502(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Z)Z
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 51
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    return p1
.end method

.method static synthetic access$600(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method static synthetic access$602(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object p1
.end method

.method static synthetic access$700(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)I
    .registers 2
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;

    .prologue
    .line 51
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    return v0
.end method

.method static synthetic access$800(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 5
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z
    .param p3, "x3"    # Z

    .prologue
    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 4
    .param p0, "x0"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;
    .param p1, "x1"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "x2"    # I

    .prologue
    .line 51
    invoke-direct {p0, p1, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    return-object v0
.end method

.method private getCurrentlyShowingValue()I
    .registers 3

    .prologue
    .line 291
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    .line 292
    .local v0, "currentIndex":I
    packed-switch v0, :pswitch_data_1e

    .line 300
    const/4 v1, -0x1

    :goto_8
    return v1

    .line 294
    :pswitch_9
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    goto :goto_8

    .line 296
    :pswitch_10
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v1

    goto :goto_8

    .line 298
    :pswitch_17
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v1

    goto :goto_8

    .line 292
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method private getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I
    .registers 6
    .param p1, "pointX"    # F
    .param p2, "pointY"    # F
    .param p3, "forceLegal"    # Z
    .param p4, "isInnerCircle"    # [Ljava/lang/Boolean;

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v0

    packed-switch v0, :pswitch_data_1e

    .line 614
    const/4 v0, -0x1

    :goto_8
    return v0

    .line 605
    :pswitch_9
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_8

    .line 608
    :pswitch_10
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_8

    .line 611
    :pswitch_17
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v0

    goto :goto_8

    .line 603
    :pswitch_data_1e
    .packed-switch 0x0
        :pswitch_9
        :pswitch_10
        :pswitch_17
    .end packed-switch
.end method

.method private getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 15
    .param p1, "degrees"    # I
    .param p2, "isInnerCircle"    # Z
    .param p3, "forceToVisibleValue"    # Z

    .prologue
    const/4 v10, 0x2

    const/4 v7, 0x0

    const/16 v9, 0x168

    const/4 v6, 0x1

    .line 523
    const/4 v8, -0x1

    if-ne p1, v8, :cond_a

    .line 524
    const/4 v3, 0x0

    .line 586
    :goto_9
    return-object v3

    .line 526
    :cond_a
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 529
    .local v1, "currentShowing":I
    if-nez p3, :cond_3f

    if-eq v1, v6, :cond_14

    if-ne v1, v10, :cond_3f

    :cond_14
    move v0, v6

    .line 531
    .local v0, "allowFineGrained":Z
    :goto_15
    if-eqz v0, :cond_41

    .line 532
    invoke-direct {p0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapPrefer30s(I)I

    move-result p1

    .line 537
    :goto_1b
    packed-switch v1, :pswitch_data_b4

    .line 545
    const/4 v4, 0x6

    .line 548
    .local v4, "stepSize":I
    :goto_1f
    if-nez v1, :cond_56

    .line 549
    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v7, :cond_51

    .line 550
    if-nez p1, :cond_4b

    if-eqz p2, :cond_4b

    .line 551
    const/16 p1, 0x168

    .line 562
    :cond_2b
    :goto_2b
    div-int v5, p1, v4

    .line 564
    .local v5, "value":I
    if-nez v1, :cond_39

    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v7, :cond_39

    if-nez p2, :cond_39

    if-eqz p1, :cond_39

    .line 565
    add-int/lit8 v5, v5, 0xc

    .line 569
    :cond_39
    packed-switch v1, :pswitch_data_bc

    .line 583
    iget-object v3, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .local v3, "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto :goto_9

    .end local v0    # "allowFineGrained":Z
    .end local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v4    # "stepSize":I
    .end local v5    # "value":I
    :cond_3f
    move v0, v7

    .line 529
    goto :goto_15

    .line 534
    .restart local v0    # "allowFineGrained":Z
    :cond_41
    invoke-static {p1, v7}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result p1

    goto :goto_1b

    .line 539
    :pswitch_46
    const/16 v4, 0x1e

    .line 540
    .restart local v4    # "stepSize":I
    goto :goto_1f

    .line 542
    .end local v4    # "stepSize":I
    :pswitch_49
    const/4 v4, 0x6

    .line 543
    .restart local v4    # "stepSize":I
    goto :goto_1f

    .line 552
    :cond_4b
    if-ne p1, v9, :cond_2b

    if-nez p2, :cond_2b

    .line 553
    const/4 p1, 0x0

    goto :goto_2b

    .line 555
    :cond_51
    if-nez p1, :cond_2b

    .line 556
    const/16 p1, 0x168

    goto :goto_2b

    .line 558
    :cond_56
    if-ne p1, v9, :cond_2b

    if-eq v1, v6, :cond_5c

    if-ne v1, v10, :cond_2b

    .line 559
    :cond_5c
    const/4 p1, 0x0

    goto :goto_2b

    .line 571
    .restart local v5    # "value":I
    :pswitch_5e
    move v2, v5

    .line 572
    .local v2, "hour":I
    iget-boolean v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v7, :cond_6d

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v7

    if-ne v7, v6, :cond_6d

    if-eq p1, v9, :cond_6d

    add-int/lit8 v2, v2, 0xc

    .line 573
    :cond_6d
    iget-boolean v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v6, :cond_7a

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v6

    if-nez v6, :cond_7a

    if-ne p1, v9, :cond_7a

    const/4 v2, 0x0

    .line 574
    :cond_7a
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v7

    invoke-direct {v3, v2, v6, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 575
    .restart local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_9

    .line 577
    .end local v2    # "hour":I
    .end local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :pswitch_8d
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v7

    invoke-direct {v3, v6, v5, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 578
    .restart local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_9

    .line 580
    .end local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :pswitch_a0
    new-instance v3, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v6

    iget-object v7, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v7

    invoke-direct {v3, v6, v7, v5}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 581
    .restart local v3    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto/16 :goto_9

    .line 537
    nop

    :pswitch_data_b4
    .packed-switch 0x0
        :pswitch_46
        :pswitch_49
    .end packed-switch

    .line 569
    :pswitch_data_bc
    .packed-switch 0x0
        :pswitch_5e
        :pswitch_8d
        :pswitch_a0
    .end packed-switch
.end method

.method private isHourInnerCircle(I)Z
    .registers 3
    .param p1, "hourOfDay"    # I

    .prologue
    .line 267
    iget-boolean v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v0, :cond_c

    const/16 v0, 0xc

    if-gt p1, v0, :cond_c

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method private preparePrefer30sMap()V
    .registers 7

    .prologue
    const/16 v5, 0x169

    .line 353
    new-array v4, v5, [I

    iput-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    .line 356
    const/4 v3, 0x0

    .line 358
    .local v3, "snappedOutputDegrees":I
    const/4 v0, 0x1

    .line 362
    .local v0, "count":I
    const/16 v2, 0x8

    .line 364
    .local v2, "expectedCount":I
    const/4 v1, 0x0

    .local v1, "degrees":I
    :goto_b
    if-ge v1, v5, :cond_2a

    .line 366
    iget-object v4, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aput v3, v4, v1

    .line 369
    if-ne v0, v2, :cond_27

    .line 370
    add-int/lit8 v3, v3, 0x6

    .line 371
    const/16 v4, 0x168

    if-ne v3, v4, :cond_1e

    .line 372
    const/4 v2, 0x7

    .line 378
    :goto_1a
    const/4 v0, 0x1

    .line 364
    :goto_1b
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 373
    :cond_1e
    rem-int/lit8 v4, v3, 0x1e

    if-nez v4, :cond_25

    .line 374
    const/16 v2, 0xe

    goto :goto_1a

    .line 376
    :cond_25
    const/4 v2, 0x4

    goto :goto_1a

    .line 380
    :cond_27
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    .line 383
    :cond_2a
    return-void
.end method

.method private reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V
    .registers 12
    .param p1, "newSelection"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "forceDrawDot"    # Z
    .param p3, "index"    # I

    .prologue
    const/4 v7, 0x0

    .line 462
    packed-switch p3, :pswitch_data_ee

    .line 507
    :cond_4
    :goto_4
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v5

    packed-switch v5, :pswitch_data_f8

    .line 520
    :goto_b
    return-void

    .line 465
    :pswitch_c
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v1

    .line 466
    .local v1, "hour":I
    invoke-direct {p0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v2

    .line 467
    .local v2, "isInnerCircle":Z
    rem-int/lit8 v5, v1, 0xc

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v0, v5, 0xc

    .line 468
    .local v0, "degrees":I
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v5, :cond_20

    rem-int/lit8 v1, v1, 0xc

    .line 469
    :cond_20
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v5, :cond_28

    if-nez v1, :cond_28

    add-int/lit8 v1, v1, 0xc

    .line 471
    :cond_28
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 472
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 474
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    if-eq v5, v6, :cond_54

    .line 475
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v3, v5, 0x3c

    .line 476
    .local v3, "minDegrees":I
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v3, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 477
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 480
    .end local v3    # "minDegrees":I
    :cond_54
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 481
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v4, v5, 0x3c

    .line 482
    .local v4, "secDegrees":I
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v4, v2, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 483
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto :goto_4

    .line 488
    .end local v0    # "degrees":I
    .end local v1    # "hour":I
    .end local v2    # "isInnerCircle":Z
    .end local v4    # "secDegrees":I
    :pswitch_77
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v5

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v0, v5, 0x3c

    .line 490
    .restart local v0    # "degrees":I
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v7, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 491
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 493
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    if-eq v5, v6, :cond_4

    .line 494
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v4, v5, 0x3c

    .line 495
    .restart local v4    # "secDegrees":I
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v4, v7, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 496
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto/16 :goto_4

    .line 501
    .end local v0    # "degrees":I
    .end local v4    # "secDegrees":I
    :pswitch_b1
    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v5

    mul-int/lit16 v5, v5, 0x168

    div-int/lit8 v0, v5, 0x3c

    .line 502
    .restart local v0    # "degrees":I
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5, v0, v7, p2}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setSelection(IZZ)V

    .line 503
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {p1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    goto/16 :goto_4

    .line 509
    .end local v0    # "degrees":I
    :pswitch_c9
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 510
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_b

    .line 513
    :pswitch_d5
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 514
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_b

    .line 517
    :pswitch_e1
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->invalidate()V

    .line 518
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    goto/16 :goto_b

    .line 462
    nop

    :pswitch_data_ee
    .packed-switch 0x0
        :pswitch_c
        :pswitch_77
        :pswitch_b1
    .end packed-switch

    .line 507
    :pswitch_data_f8
    .packed-switch 0x0
        :pswitch_c9
        :pswitch_d5
        :pswitch_e1
    .end packed-switch
.end method

.method private roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 5
    .param p1, "newSelection"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p2, "currentItemShowing"    # I

    .prologue
    .line 436
    packed-switch p2, :pswitch_data_22

    .line 447
    iget-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 449
    :goto_5
    return-object p1

    .line 438
    :pswitch_6
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->HOUR:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    .line 439
    goto :goto_5

    .line 441
    :pswitch_f
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->MINUTE:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    .line 442
    goto :goto_5

    .line 444
    :pswitch_18
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    sget-object v1, Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;->SECOND:Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;

    invoke-interface {v0, p1, v1}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->roundToNearest(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Lcom/wdullaer/materialdatetimepicker/time/Timepoint$TYPE;)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p1

    .line 445
    goto :goto_5

    .line 436
    nop

    :pswitch_data_22
    .packed-switch 0x0
        :pswitch_6
        :pswitch_f
        :pswitch_18
    .end packed-switch
.end method

.method private setItem(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 4
    .param p1, "index"    # I
    .param p2, "time"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 256
    invoke-direct {p0, p2, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object p2

    .line 257
    iput-object p2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 258
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 259
    return-void
.end method

.method private static snapOnly30s(II)I
    .registers 7
    .param p0, "degrees"    # I
    .param p1, "forceHigherOrLower"    # I

    .prologue
    .line 409
    const/16 v2, 0x1e

    .line 410
    .local v2, "stepSize":I
    div-int v3, p0, v2

    mul-int v1, v3, v2

    .line 411
    .local v1, "floor":I
    add-int v0, v1, v2

    .line 412
    .local v0, "ceiling":I
    const/4 v3, 0x1

    if-ne p1, v3, :cond_d

    .line 413
    move p0, v0

    .line 426
    :goto_c
    return p0

    .line 414
    :cond_d
    const/4 v3, -0x1

    if-ne p1, v3, :cond_15

    .line 415
    if-ne p0, v1, :cond_13

    .line 416
    sub-int/2addr v1, v2

    .line 418
    :cond_13
    move p0, v1

    goto :goto_c

    .line 420
    :cond_15
    sub-int v3, p0, v1

    sub-int v4, v0, p0

    if-ge v3, v4, :cond_1d

    .line 421
    move p0, v1

    goto :goto_c

    .line 423
    :cond_1d
    move p0, v0

    goto :goto_c
.end method

.method private snapPrefer30s(I)I
    .registers 3
    .param p1, "degrees"    # I

    .prologue
    .line 393
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    if-nez v0, :cond_6

    .line 394
    const/4 v0, -0x1

    .line 396
    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSnapPrefer30sMap:[I

    aget v0, v0, p1

    goto :goto_5
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .registers 9
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 905
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getEventType()I

    move-result v5

    const/16 v6, 0x20

    if-ne v5, v6, :cond_4a

    .line 907
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->clear()V

    .line 908
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 909
    .local v1, "time":Ljava/util/Calendar;
    const/16 v5, 0xa

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getHours()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 910
    const/16 v5, 0xc

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getMinutes()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 911
    const/16 v5, 0xd

    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getSeconds()I

    move-result v6

    invoke-virtual {v1, v5, v6}, Ljava/util/Calendar;->set(II)V

    .line 912
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 913
    .local v2, "millis":J
    const/4 v0, 0x1

    .line 914
    .local v0, "flags":I
    iget-boolean v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v5, :cond_39

    .line 915
    or-int/lit16 v0, v0, 0x80

    .line 917
    :cond_39
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v2, v3, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v4

    .line 918
    .local v4, "timeString":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 919
    const/4 v5, 0x1

    .line 921
    .end local v0    # "flags":I
    .end local v1    # "time":Ljava/util/Calendar;
    .end local v2    # "millis":J
    .end local v4    # "timeString":Ljava/lang/String;
    :goto_49
    return v5

    :cond_4a
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result v5

    goto :goto_49
.end method

.method public getCurrentItemShowing()I
    .registers 4

    .prologue
    .line 622
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    if-eqz v0, :cond_2a

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2a

    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2a

    .line 623
    const-string v0, "RadialPickerLayout"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current item showing was unfortunately set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, -0x1

    .line 626
    :goto_29
    return v0

    :cond_2a
    iget v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    goto :goto_29
.end method

.method public getHours()I
    .registers 2

    .prologue
    .line 271
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v0

    return v0
.end method

.method public getIsCurrentlyAmOrPm()I
    .registers 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 306
    const/4 v0, 0x0

    .line 310
    :goto_9
    return v0

    .line 307
    :cond_a
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isPM()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 308
    const/4 v0, 0x1

    goto :goto_9

    .line 310
    :cond_14
    const/4 v0, -0x1

    goto :goto_9
.end method

.method public getMinutes()I
    .registers 2

    .prologue
    .line 275
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v0

    return v0
.end method

.method public getSeconds()I
    .registers 2

    .prologue
    .line 279
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v0

    return v0
.end method

.method public getTime()Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .registers 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    return-object v0
.end method

.method public initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;Lcom/wdullaer/materialdatetimepicker/time/Timepoint;Z)V
    .registers 50
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "timePickerDialog"    # Lcom/wdullaer/materialdatetimepicker/time/TimePickerDialog;
    .param p3, "initialTime"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .param p4, "is24HourMode"    # Z

    .prologue
    .line 165
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    if-eqz v2, :cond_e

    .line 166
    const-string v2, "RadialPickerLayout"

    const-string v3, "Time has already been initialized."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :goto_d
    return-void

    .line 170
    :cond_e
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    .line 171
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v2}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v2

    if-nez v2, :cond_20

    if-eqz p4, :cond_116

    :cond_20
    const/4 v2, 0x1

    :goto_21
    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    .line 174
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v3}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;)V

    .line 175
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCircleView:Lcom/wdullaer/materialdatetimepicker/time/CircleView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/CircleView;->invalidate()V

    .line 176
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v2, :cond_5a

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->isAM()Z

    move-result v2

    if-eqz v2, :cond_119

    const/4 v2, 0x0

    :goto_4e
    move-object/from16 v0, p1

    invoke-virtual {v3, v0, v5, v2}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;I)V

    .line 178
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 182
    :cond_5a
    new-instance v19, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$1;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 189
    .local v19, "secondValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    new-instance v13, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$2;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 196
    .local v13, "minuteValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    new-instance v7, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;

    move-object/from16 v0, p0

    invoke-direct {v7, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$3;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    .line 207
    .local v7, "hourValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v39, v0

    fill-array-data v39, :array_21a

    .line 208
    .local v39, "hours":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v40, v0

    fill-array-data v40, :array_236

    .line 209
    .local v40, "hours_24":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v43, v0

    fill-array-data v43, :array_252

    .line 210
    .local v43, "minutes":[I
    const/16 v2, 0xc

    new-array v0, v2, [I

    move-object/from16 v44, v0

    fill-array-data v44, :array_26e

    .line 211
    .local v44, "seconds":[I
    const/16 v2, 0xc

    new-array v4, v2, [Ljava/lang/String;

    .line 212
    .local v4, "hoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v42, v0

    .line 213
    .local v42, "innerHoursTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v10, v2, [Ljava/lang/String;

    .line 214
    .local v10, "minutesTexts":[Ljava/lang/String;
    const/16 v2, 0xc

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 215
    .local v16, "secondsTexts":[Ljava/lang/String;
    const/16 v41, 0x0

    .local v41, "i":I
    :goto_ab
    const/16 v2, 0xc

    move/from16 v0, v41

    if-ge v0, v2, :cond_133

    .line 216
    if-eqz p4, :cond_11c

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v40, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :goto_c9
    aput-object v2, v4, v41

    .line 218
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v39, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v42, v41

    .line 219
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v43, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v10, v41

    .line 220
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%02d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v44, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v16, v41

    .line 215
    add-int/lit8 v41, v41, 0x1

    goto :goto_ab

    .line 171
    .end local v4    # "hoursTexts":[Ljava/lang/String;
    .end local v7    # "hourValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v10    # "minutesTexts":[Ljava/lang/String;
    .end local v13    # "minuteValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v16    # "secondsTexts":[Ljava/lang/String;
    .end local v19    # "secondValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .end local v39    # "hours":[I
    .end local v40    # "hours_24":[I
    .end local v41    # "i":I
    .end local v42    # "innerHoursTexts":[Ljava/lang/String;
    .end local v43    # "minutes":[I
    .end local v44    # "seconds":[I
    :cond_116
    const/4 v2, 0x0

    goto/16 :goto_21

    .line 177
    :cond_119
    const/4 v2, 0x1

    goto/16 :goto_4e

    .line 216
    .restart local v4    # "hoursTexts":[Ljava/lang/String;
    .restart local v7    # "hourValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v10    # "minutesTexts":[Ljava/lang/String;
    .restart local v13    # "minuteValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v16    # "secondsTexts":[Ljava/lang/String;
    .restart local v19    # "secondValidator":Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;
    .restart local v39    # "hours":[I
    .restart local v40    # "hours_24":[I
    .restart local v41    # "i":I
    .restart local v42    # "innerHoursTexts":[Ljava/lang/String;
    .restart local v43    # "minutes":[I
    .restart local v44    # "seconds":[I
    :cond_11c
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v3, "%d"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aget v8, v39, v41

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v5, v6

    invoke-static {v2, v3, v5}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_c9

    .line 222
    :cond_133
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    if-eqz p4, :cond_20d

    move-object/from16 v5, v42

    :goto_13b
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v8, 0x1

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    if-eqz p4, :cond_210

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    :goto_14f
    invoke-virtual {v3, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 225
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 226
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    const/4 v14, 0x0

    move-object/from16 v9, p1

    invoke-virtual/range {v8 .. v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 227
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 229
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    const/16 v17, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v15, p1

    invoke-virtual/range {v14 .. v20}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->initialize(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView$SelectionValidator;Z)V

    .line 230
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setSelection(I)V

    .line 231
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->invalidate()V

    .line 234
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 235
    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    mul-int/lit8 v25, v2, 0x1e

    .line 236
    .local v25, "hourDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v22, v0

    const/16 v24, 0x1

    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->isHourInnerCircle(I)Z

    move-result v26

    move-object/from16 v21, p1

    move/from16 v23, p4

    invoke-virtual/range {v20 .. v26}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 238
    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v2

    mul-int/lit8 v31, v2, 0x6

    .line 239
    .local v31, "minuteDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v26, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v28, v0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v32, 0x0

    move-object/from16 v27, p1

    invoke-virtual/range {v26 .. v32}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 241
    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v2

    mul-int/lit8 v37, v2, 0x6

    .line 242
    .local v37, "secondDegrees":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    move-object/from16 v32, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    move-object/from16 v34, v0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v38, 0x0

    move-object/from16 v33, p1

    invoke-virtual/range {v32 .. v38}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->initialize(Landroid/content/Context;Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;ZZIZ)V

    .line 245
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTimeInitialized:Z

    goto/16 :goto_d

    .line 222
    .end local v25    # "hourDegrees":I
    .end local v31    # "minuteDegrees":I
    .end local v37    # "secondDegrees":I
    :cond_20d
    const/4 v5, 0x0

    goto/16 :goto_13b

    .line 224
    :cond_210
    invoke-virtual/range {p3 .. p3}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v2

    rem-int/lit8 v2, v2, 0xc

    aget v2, v39, v2

    goto/16 :goto_14f

    .line 207
    :array_21a
    .array-data 4
        0xc
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0xa
        0xb
    .end array-data

    .line 208
    :array_236
    .array-data 4
        0x0
        0xd
        0xe
        0xf
        0x10
        0x11
        0x12
        0x13
        0x14
        0x15
        0x16
        0x17
    .end array-data

    .line 209
    :array_252
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data

    .line 210
    :array_26e
    .array-data 4
        0x0
        0x5
        0xa
        0xf
        0x14
        0x19
        0x1e
        0x23
        0x28
        0x2d
        0x32
        0x37
    .end array-data
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .registers 4
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 889
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 890
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_14

    .line 891
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_BACKWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 892
    sget-object v0, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;->ACTION_SCROLL_FORWARD:Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 898
    :goto_13
    return-void

    .line 895
    :cond_14
    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    .line 896
    const/16 v0, 0x2000

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(I)V

    goto :goto_13
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .registers 21
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 698
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 699
    .local v5, "eventX":F
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 702
    .local v6, "eventY":F
    const/4 v13, 0x1

    new-array v8, v13, [Ljava/lang/Boolean;

    .line 703
    .local v8, "isInnerCircle":[Ljava/lang/Boolean;
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v8, v13

    .line 705
    invoke-virtual/range {p2 .. p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v13

    packed-switch v13, :pswitch_data_2b2

    .line 864
    :cond_1a
    :goto_1a
    const/4 v13, 0x0

    :goto_1b
    return v13

    .line 707
    :pswitch_1c
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_24

    .line 708
    const/4 v13, 0x1

    goto :goto_1b

    .line 711
    :cond_24
    move-object/from16 v0, p0

    iput v5, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    .line 712
    move-object/from16 v0, p0

    iput v6, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    .line 714
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 715
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 716
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 718
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-nez v13, :cond_7f

    .line 719
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    .line 723
    :goto_4d
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_5a

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_85

    .line 726
    :cond_5a
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v13}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 727
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 728
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$4;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$4;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 761
    :cond_7d
    :goto_7d
    const/4 v13, 0x1

    goto :goto_1b

    .line 721
    :cond_7f
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto :goto_4d

    .line 738
    :cond_85
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v13}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v7

    .line 740
    .local v7, "forceLegal":Z
    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v7, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v13

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 741
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, 0x0

    aget-object v14, v8, v14

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    const/4 v15, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v11

    .line 742
    .local v11, "selectedTime":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    invoke-interface {v13, v11, v14}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->isOutOfRange(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Z

    move-result v13

    if-eqz v13, :cond_bc

    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    .line 743
    :cond_bc
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_7d

    .line 746
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v13}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 747
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;

    move-object/from16 v0, p0

    invoke-direct {v14, v0, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$5;-><init>(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;[Ljava/lang/Boolean;)V

    move-object/from16 v0, p0

    iget v15, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TAP_TIMEOUT:I

    int-to-long v0, v15

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    invoke-virtual {v13, v14, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_7d

    .line 763
    .end local v7    # "forceLegal":Z
    .end local v11    # "selectedTime":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :pswitch_e2
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_f2

    .line 765
    const-string v13, "RadialPickerLayout"

    const-string v14, "Input was disabled, but received ACTION_MOVE."

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/4 v13, 0x1

    goto/16 :goto_1b

    .line 769
    :cond_f2
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownY:F

    sub-float v13, v6, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 770
    .local v3, "dY":F
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownX:F

    sub-float v13, v5, v13

    invoke-static {v13}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 772
    .local v2, "dX":F
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v13, :cond_11e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v13, v13

    cmpg-float v13, v2, v13

    if-gtz v13, :cond_11e

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->TOUCH_SLOP:I

    int-to-float v13, v13

    cmpg-float v13, v3, v13

    if-lez v13, :cond_1a

    .line 780
    :cond_11e
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_12b

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_157

    .line 781
    :cond_12b
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 782
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v9

    .line 783
    .local v9, "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eq v9, v13, :cond_1a

    .line 784
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 785
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 786
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_1a

    .line 791
    .end local v9    # "isTouchingAmOrPm":I
    :cond_157
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_1a

    .line 797
    const/4 v13, 0x1

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 798
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 799
    const/4 v13, 0x1

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v4

    .line 800
    .local v4, "degrees":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_1bb

    .line 801
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v4, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v12

    .line 805
    .local v12, "value":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    const/4 v13, 0x1

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 806
    if-eqz v12, :cond_1bb

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    if-eqz v13, :cond_1a9

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v13, v12}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_1bb

    .line 807
    :cond_1a9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mController:Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;

    invoke-interface {v13}, Lcom/wdullaer/materialdatetimepicker/time/TimePickerController;->tryVibrate()V

    .line 808
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mLastValueSelected:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 809
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v13, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 812
    .end local v12    # "value":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_1bb
    const/4 v13, 0x1

    goto/16 :goto_1b

    .line 814
    .end local v2    # "dX":F
    .end local v3    # "dY":F
    .end local v4    # "degrees":I
    :pswitch_1be
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    if-nez v13, :cond_1d5

    .line 816
    const-string v13, "RadialPickerLayout"

    const-string v14, "Input was disabled, but received ACTION_UP."

    invoke-static {v13, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->enablePicker()V

    .line 818
    const/4 v13, 0x1

    goto/16 :goto_1b

    .line 821
    :cond_1d5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHandler:Landroid/os/Handler;

    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 822
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    .line 825
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-eqz v13, :cond_1ef

    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_256

    .line 826
    :cond_1ef
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->getIsTouchingAmOrPm(FF)I

    move-result v9

    .line 827
    .restart local v9    # "isTouchingAmOrPm":I
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    const/4 v14, -0x1

    invoke-virtual {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPmPressed(I)V

    .line 828
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 830
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-ne v9, v13, :cond_244

    .line 831
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v13, v9}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 832
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getIsCurrentlyAmOrPm()I

    move-result v13

    if-eq v13, v9, :cond_244

    .line 833
    new-instance v10, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v10, v13}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 834
    .local v10, "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    if-nez v13, :cond_24b

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 836
    :cond_22b
    :goto_22b
    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v10

    .line 837
    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    invoke-direct {v0, v10, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 838
    move-object/from16 v0, p0

    iput-object v10, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 839
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v13, v10}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 843
    .end local v10    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_244
    const/4 v13, -0x1

    move-object/from16 v0, p0

    iput v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    goto/16 :goto_1a

    .line 835
    .restart local v10    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_24b
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIsTouchingAmOrPm:I

    const/4 v14, 0x1

    if-ne v13, v14, :cond_22b

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setPM()V

    goto :goto_22b

    .line 848
    .end local v9    # "isTouchingAmOrPm":I
    .end local v10    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_256
    move-object/from16 v0, p0

    iget v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDownDegrees:I

    const/4 v14, -0x1

    if-eq v13, v14, :cond_2a8

    .line 849
    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    move-object/from16 v0, p0

    invoke-direct {v0, v5, v6, v13, v8}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getDegreesFromCoords(FFZ[Ljava/lang/Boolean;)I

    move-result v4

    .line 850
    .restart local v4    # "degrees":I
    const/4 v13, -0x1

    if-eq v4, v13, :cond_2a8

    .line 851
    const/4 v13, 0x0

    aget-object v13, v8, v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    move-object/from16 v0, p0

    iget-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    if-nez v13, :cond_2b0

    const/4 v13, 0x1

    :goto_278
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v14, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getTimeFromDegrees(IZZ)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v12

    .line 852
    .restart local v12    # "value":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v13

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v12

    .line 853
    const/4 v13, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    move-object/from16 v0, p0

    invoke-direct {v0, v12, v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 854
    move-object/from16 v0, p0

    iput-object v12, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 855
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v13, v12}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 856
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-virtual/range {p0 .. p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->advancePicker(I)V

    .line 859
    .end local v4    # "degrees":I
    .end local v12    # "value":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :cond_2a8
    const/4 v13, 0x0

    move-object/from16 v0, p0

    iput-boolean v13, v0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingMove:Z

    .line 860
    const/4 v13, 0x1

    goto/16 :goto_1b

    .line 851
    .restart local v4    # "degrees":I
    :cond_2b0
    const/4 v13, 0x0

    goto :goto_278

    .line 705
    :pswitch_data_2b2
    .packed-switch 0x0
        :pswitch_1c
        :pswitch_1be
        :pswitch_e2
    .end packed-switch
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .registers 14
    .param p1, "action"    # I
    .param p2, "arguments"    # Landroid/os/Bundle;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    const/4 v8, 0x1

    .line 931
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v9

    if-eqz v9, :cond_8

    .line 1009
    :goto_7
    return v8

    .line 935
    :cond_8
    const/4 v0, 0x0

    .line 936
    .local v0, "changeMultiplier":I
    const/16 v9, 0x1000

    if-ne p1, v9, :cond_42

    .line 937
    const/4 v0, 0x1

    .line 941
    :cond_e
    :goto_e
    if-eqz v0, :cond_92

    .line 942
    invoke-direct {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentlyShowingValue()I

    move-result v7

    .line 943
    .local v7, "value":I
    const/4 v6, 0x0

    .line 944
    .local v6, "stepSize":I
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v1

    .line 945
    .local v1, "currentItemShowing":I
    if-nez v1, :cond_48

    .line 946
    const/16 v6, 0x1e

    .line 947
    rem-int/lit8 v7, v7, 0xc

    .line 954
    :cond_1f
    :goto_1f
    mul-int v2, v7, v6

    .line 955
    .local v2, "degrees":I
    invoke-static {v2, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->snapOnly30s(II)I

    move-result v2

    .line 956
    div-int v7, v2, v6

    .line 957
    const/4 v3, 0x0

    .line 958
    .local v3, "maxValue":I
    const/4 v4, 0x0

    .line 959
    .local v4, "minValue":I
    if-nez v1, :cond_55

    .line 960
    iget-boolean v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mIs24HourMode:Z

    if-eqz v9, :cond_51

    .line 961
    const/16 v3, 0x17

    .line 969
    :goto_31
    if-le v7, v3, :cond_58

    .line 971
    move v7, v4

    .line 978
    :cond_34
    :goto_34
    packed-switch v1, :pswitch_data_96

    .line 1001
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 1004
    .local v5, "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :goto_39
    invoke-direct {p0, v1, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setItem(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 1005
    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v9, v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    goto :goto_7

    .line 938
    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v6    # "stepSize":I
    .end local v7    # "value":I
    :cond_42
    const/16 v9, 0x2000

    if-ne p1, v9, :cond_e

    .line 939
    const/4 v0, -0x1

    goto :goto_e

    .line 948
    .restart local v1    # "currentItemShowing":I
    .restart local v6    # "stepSize":I
    .restart local v7    # "value":I
    :cond_48
    if-ne v1, v8, :cond_4c

    .line 949
    const/4 v6, 0x6

    goto :goto_1f

    .line 950
    :cond_4c
    const/4 v9, 0x2

    if-ne v1, v9, :cond_1f

    .line 951
    const/4 v6, 0x6

    goto :goto_1f

    .line 963
    .restart local v2    # "degrees":I
    .restart local v3    # "maxValue":I
    .restart local v4    # "minValue":I
    :cond_51
    const/16 v3, 0xc

    .line 964
    const/4 v4, 0x1

    goto :goto_31

    .line 967
    :cond_55
    const/16 v3, 0x37

    goto :goto_31

    .line 972
    :cond_58
    if-ge v7, v4, :cond_34

    .line 974
    move v7, v3

    goto :goto_34

    .line 980
    :pswitch_5c
    new-instance v5, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v9

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v10

    invoke-direct {v5, v7, v9, v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 985
    .restart local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto :goto_39

    .line 987
    .end local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :pswitch_6e
    new-instance v5, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getSecond()I

    move-result v10

    invoke-direct {v5, v9, v7, v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 992
    .restart local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto :goto_39

    .line 994
    .end local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    :pswitch_80
    new-instance v5, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v9, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v9}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getHour()I

    move-result v9

    iget-object v10, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-virtual {v10}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->getMinute()I

    move-result v10

    invoke-direct {v5, v9, v10, v7}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(III)V

    .line 999
    .restart local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    goto :goto_39

    .line 1009
    .end local v1    # "currentItemShowing":I
    .end local v2    # "degrees":I
    .end local v3    # "maxValue":I
    .end local v4    # "minValue":I
    .end local v5    # "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    .end local v6    # "stepSize":I
    .end local v7    # "value":I
    :cond_92
    const/4 v8, 0x0

    goto/16 :goto_7

    .line 978
    nop

    :pswitch_data_96
    .packed-switch 0x0
        :pswitch_5c
        :pswitch_6e
        :pswitch_80
    .end packed-switch
.end method

.method public setAmOrPm(I)V
    .registers 5
    .param p1, "amOrPm"    # I

    .prologue
    const/4 v2, 0x0

    .line 318
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1, p1}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->setAmOrPm(I)V

    .line 319
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mAmPmCirclesView:Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;

    invoke-virtual {v1}, Lcom/wdullaer/materialdatetimepicker/time/AmPmCirclesView;->invalidate()V

    .line 320
    new-instance v0, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    invoke-direct {v0, v1}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;-><init>(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 321
    .local v0, "newSelection":Lcom/wdullaer/materialdatetimepicker/time/Timepoint;
    if-nez p1, :cond_26

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setAM()V

    .line 323
    :cond_17
    :goto_17
    invoke-direct {p0, v0, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->roundToValidTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;I)Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    move-result-object v0

    .line 324
    invoke-direct {p0, v0, v2, v2}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->reselectSelector(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;ZI)V

    .line 325
    iput-object v0, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentTime:Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .line 326
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    invoke-interface {v1, v0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;->onValueSelected(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 327
    return-void

    .line 322
    :cond_26
    const/4 v1, 0x1

    if-ne p1, v1, :cond_17

    invoke-virtual {v0}, Lcom/wdullaer/materialdatetimepicker/time/Timepoint;->setPM()V

    goto :goto_17
.end method

.method public setCurrentItemShowing(IZ)V
    .registers 12
    .param p1, "index"    # I
    .param p2, "animate"    # Z

    .prologue
    const/4 v8, 0x3

    const/4 v5, 0x0

    const/4 v7, 0x2

    const/4 v4, 0x1

    .line 634
    if-eqz p1, :cond_23

    if-eq p1, v4, :cond_23

    if-eq p1, v7, :cond_23

    .line 635
    const-string v5, "RadialPickerLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TimePicker does not support view at index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    :goto_22
    return-void

    .line 639
    :cond_23
    invoke-virtual {p0}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->getCurrentItemShowing()I

    move-result v2

    .line 640
    .local v2, "lastIndex":I
    iput p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mCurrentItemShowing:I

    .line 642
    if-eqz p2, :cond_133

    if-eq p1, v2, :cond_133

    .line 643
    const/4 v6, 0x4

    new-array v0, v6, [Landroid/animation/ObjectAnimator;

    .line 644
    .local v0, "anims":[Landroid/animation/ObjectAnimator;
    if-ne p1, v4, :cond_77

    if-nez v2, :cond_77

    .line 645
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 646
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 647
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 648
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    .line 676
    :cond_54
    :goto_54
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    if-eqz v5, :cond_65

    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v5

    if-eqz v5, :cond_65

    .line 677
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->end()V

    .line 679
    :cond_65
    new-instance v5, Landroid/animation/AnimatorSet;

    invoke-direct {v5}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    .line 680
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v5, v0}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 681
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mTransition:Landroid/animation/AnimatorSet;

    invoke-virtual {v5}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_22

    .line 649
    :cond_77
    if-nez p1, :cond_9c

    if-ne v2, v4, :cond_9c

    .line 650
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 651
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 652
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 653
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    goto :goto_54

    .line 654
    :cond_9c
    if-ne p1, v4, :cond_c1

    if-ne v2, v7, :cond_c1

    .line 655
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 656
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 657
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 658
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    goto :goto_54

    .line 659
    :cond_c1
    if-nez p1, :cond_e7

    if-ne v2, v7, :cond_e7

    .line 660
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 661
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 662
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 663
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    goto/16 :goto_54

    .line 664
    :cond_e7
    if-ne p1, v7, :cond_10d

    if-ne v2, v4, :cond_10d

    .line 665
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 666
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 667
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 668
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    goto/16 :goto_54

    .line 669
    :cond_10d
    if-ne p1, v7, :cond_54

    if-nez v2, :cond_54

    .line 670
    iget-object v6, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v6

    aput-object v6, v0, v5

    .line 671
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getReappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v4

    .line 672
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v7

    .line 673
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    invoke-virtual {v5}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->getDisappearAnimator()Landroid/animation/ObjectAnimator;

    move-result-object v5

    aput-object v5, v0, v8

    goto/16 :goto_54

    .line 683
    .end local v0    # "anims":[Landroid/animation/ObjectAnimator;
    :cond_133
    if-nez p1, :cond_161

    move v1, v4

    .line 684
    .local v1, "hourAlpha":I
    :goto_136
    if-ne p1, v4, :cond_163

    move v3, v4

    .line 685
    .local v3, "minuteAlpha":I
    :goto_139
    if-ne p1, v7, :cond_165

    .line 686
    .local v4, "secondAlpha":I
    :goto_13b
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 687
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mHourRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v6, v1

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 688
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 689
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mMinuteRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v6, v3

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    .line 690
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialTextsView:Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialTextsView;->setAlpha(F)V

    .line 691
    iget-object v5, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mSecondRadialSelectorView:Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;

    int-to-float v6, v4

    invoke-virtual {v5, v6}, Lcom/wdullaer/materialdatetimepicker/time/RadialSelectorView;->setAlpha(F)V

    goto/16 :goto_22

    .end local v1    # "hourAlpha":I
    .end local v3    # "minuteAlpha":I
    .end local v4    # "secondAlpha":I
    :cond_161
    move v1, v5

    .line 683
    goto :goto_136

    .restart local v1    # "hourAlpha":I
    :cond_163
    move v3, v5

    .line 684
    goto :goto_139

    .restart local v3    # "minuteAlpha":I
    :cond_165
    move v4, v5

    .line 685
    goto :goto_13b
.end method

.method public setOnValueSelectedListener(Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;)V
    .registers 2
    .param p1, "listener"    # Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .prologue
    .line 154
    iput-object p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mListener:Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout$OnValueSelectedListener;

    .line 155
    return-void
.end method

.method public setTime(Lcom/wdullaer/materialdatetimepicker/time/Timepoint;)V
    .registers 3
    .param p1, "time"    # Lcom/wdullaer/materialdatetimepicker/time/Timepoint;

    .prologue
    .line 249
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->setItem(ILcom/wdullaer/materialdatetimepicker/time/Timepoint;)V

    .line 250
    return-void
.end method

.method public trySettingInputEnabled(Z)Z
    .registers 4
    .param p1, "inputEnabled"    # Z

    .prologue
    const/4 v0, 0x0

    .line 871
    iget-boolean v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mDoingTouch:Z

    if-eqz v1, :cond_8

    if-nez p1, :cond_8

    .line 879
    :goto_7
    return v0

    .line 877
    :cond_8
    iput-boolean p1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mInputEnabled:Z

    .line 878
    iget-object v1, p0, Lcom/wdullaer/materialdatetimepicker/time/RadialPickerLayout;->mGrayBox:Landroid/view/View;

    if-eqz p1, :cond_f

    const/4 v0, 0x4

    :cond_f
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 879
    const/4 v0, 0x1

    goto :goto_7
.end method

//
//  BNRQuizViewController.m
//  Quiz
//
//  Created by Richard E Millet on 2/26/14.
//  Copyright (c) 2014 remillet. All rights reserved.
//

#import "BNRQuizViewController.h"

@interface BNRQuizViewController ()

@property (nonatomic) int currentQuestionIndex;
@property (nonatomic, copy) NSArray *questionsList;
@property (nonatomic, copy) NSArray *answersList;

@property (weak, nonatomic) IBOutlet UILabel *questionLabel;
@property (weak, nonatomic) IBOutlet UILabel *answerLabel;

@end

@implementation BNRQuizViewController

- (IBAction)showQuestion:(id)sender
{
	// Step to the next question
	self.currentQuestionIndex++;
	
	if (self.currentQuestionIndex == [self.questionsList count]) {
		// Go back to the first question
		self.currentQuestionIndex = 0;
	}
	
	// Set the label text to the current question
	self.questionLabel.text = self.questionsList[self.currentQuestionIndex];
	
	// Reset the answer label
	self.answerLabel.text = @"???";
	
}

- (IBAction)showAnswer:(id)sender
{
	self.answerLabel.text = self.answersList[self.currentQuestionIndex];
}

/*
 * Template code
 */

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    
	if (self) {
        self.questionsList = @[@"From what is congnac made?",
							   @"What is 7 + 7?",
							   @"What is the capitol of Vermont?"];
		self.answersList = @[@"Grapes",
							 @"14",
							 @"Montpelier"];
    }
	
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
